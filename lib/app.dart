import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noise_meter/noise_meter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:permission_handler/permission_handler.dart';

class NoiseApp extends StatefulWidget {
  @override
  _NoiseAppState createState() => _NoiseAppState();
}

class _NoiseAppState extends State<NoiseApp> {
  bool _isRecording = false;
  // ignore: cancel_subscriptions
  StreamSubscription<NoiseReading>? _noiseSubscription;
  late NoiseMeter _noiseMeter;
  double maxDB = 0;
  double meanDB = 0;
  List<_ChartData> chartData = <_ChartData>[];
  // ChartSeriesController? _chartSeriesController;
  late int previousMillis;
  List<double> maxDBValues = [];
  Timer? averageTimer;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
  @override
  void initState() {
    super.initState();
    _noiseMeter = NoiseMeter(onError);
  }

  int aboveThresholdCount = 0;
  int alertThresholdSeconds = 10;
  bool showAlert = false;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
  void onData(NoiseReading noiseReading) {
    this.setState(() {
      if (!this._isRecording) this._isRecording = true;
    });

    maxDB = noiseReading.maxDecibel;
    meanDB = noiseReading.meanDecibel;
    if (!maxDB.isNaN &&
        !maxDB.isInfinite &&
        !meanDB.isNaN &&
        !meanDB.isInfinite) {
      chartData.add(
        _ChartData(
          maxDB,
          meanDB,
          ((DateTime.now().millisecondsSinceEpoch - previousMillis) / 1000)
              .toDouble(),
        ),
      );
    }

    if (maxDB != null) {
      maxDBValues.add(maxDB!);

      if (averageTimer == null) {
        startAverageTimer();
      }
    }
  }

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
  void startAverageTimer() {
    averageTimer = Timer(Duration(seconds: 5), () {
      if (maxDBValues.isNotEmpty) {
        double sum = maxDBValues.reduce((value, element) => value + element);
        double average = sum / maxDBValues.length;
        if (average > 70) {
          showAlertDialog();
        }
        maxDBValues.clear();
      }
      averageTimer = null;
    });
  }

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
  void showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('So Annoying !!!'),
          actions: [
            TextButton(
              child: Text('close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
  void onError(Object e) {
    print(e.toString());
    _isRecording = false;
  }

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
  void start() async {
    if (await Permission.microphone.request().isGranted) {
      //CODE
      previousMillis = DateTime.now().millisecondsSinceEpoch;
      try {
        _noiseSubscription = _noiseMeter.noiseStream.listen(onData);
      } catch (e) {
        print(e);
      }
    }
  }

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
  void stop() async {
    try {
      _noiseSubscription!.cancel();
      _noiseSubscription = null;

      this.setState(() => this._isRecording = false);
    } catch (e) {
      print('stopRecorder error: $e');
    }
    previousMillis = 0;
    chartData.clear();
  }

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
  @override
  Widget build(BuildContext context) {
    bool _isDark = Theme.of(context).brightness == Brightness.light;
    if (chartData.length >= 25) {
      chartData.removeAt(0);
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _isDark ? Colors.blue : Colors.blue.shade800,
        title: Text('Noise Level App'),
        // actions: [],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Text(_isRecording ? 'Stop' : 'Start'),
        onPressed: _isRecording ? stop : start,
        icon: !_isRecording ? Icon(Icons.circle) : null,
        backgroundColor: _isRecording ? Colors.red : Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  maxDB != null ? maxDB!.toStringAsFixed(2) : 'Press Start',
                  style: GoogleFonts.exo2(fontSize: 76),
                ),
              ),
            ),
            Text(
              meanDB != null ? 'Mean: ${meanDB!.toStringAsFixed(2)}' : 'Data',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
            ),
            Expanded(
              child: SfCartesianChart(
                series: <LineSeries<_ChartData, double>>[
                  LineSeries<_ChartData, double>(
                      dataSource: chartData,
                      xAxisName: 'Time',
                      yAxisName: 'dB',
                      name: 'dB values over time',
                      xValueMapper: (_ChartData value, _) => value.frames,
                      yValueMapper: (_ChartData value, _) => value.maxDB,
                      animationDuration: 0),
                ],
              ),
            ),
            SizedBox(
              height: 68,
            ),
          ],
        ),
      ),
    );
  }
}

class _ChartData {
  final double? maxDB;
  final double? meanDB;
  final double frames;

  _ChartData(this.maxDB, this.meanDB, this.frames);
}
