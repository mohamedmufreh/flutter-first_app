import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:audioplayers/audioplayers.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Numbers'),
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            color: Color(0xffEF9235),
            child: Row(
              children: [
                Container(
                  color: Color.fromARGB(255, 248, 227, 164),
                  child: Image.asset('assets/images/numbers/number_one.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('hitotsu', style: TextStyle(fontSize: 18)),
                      Text('One', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource('sounds/numbers/number_one_sound.mp3'));
                      },
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          //##########################################################
          //##############################################################
          Container(
            height: 100,
            color: Color(0xffEF9235),
            child: Row(
              children: [
                Container(
                  color: Color.fromARGB(255, 248, 227, 164),
                  child: Image.asset('assets/images/numbers/number_two.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('futatsu', style: TextStyle(fontSize: 18)),
                      Text('Two', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource('sounds/numbers/number_two_sound.mp3'));
                      },
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          //##############################################################
          //##############################################################
          Container(
            height: 100,
            color: Color(0xffEF9235),
            child: Row(
              children: [
                Container(
                  color: Color.fromARGB(255, 248, 227, 164),
                  child: Image.asset('assets/images/numbers/number_three.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('mittsu', style: TextStyle(fontSize: 18)),
                      Text('Three', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                      onTap: () {
                        player.play(AssetSource(
                            'sounds/numbers/number_three_sound.mp3'));
                      },
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          //##############################################################
          //##############################################################
          Container(
            height: 100,
            color: Color(0xffEF9235),
            child: Row(
              children: [
                Container(
                  color: Color.fromARGB(255, 248, 227, 164),
                  child: Image.asset('assets/images/numbers/number_four.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('yottsu', style: TextStyle(fontSize: 18)),
                      Text('Four', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                      onTap: () {
                        player.play(AssetSource(
                            'sounds/numbers/number_four_sound.mp3'));
                      },
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          //#############################################################
          //##############################################################
          Container(
            height: 100,
            color: Color(0xffEF9235),
            child: Row(
              children: [
                Container(
                  color: Color.fromARGB(255, 248, 227, 164),
                  child: Image.asset('assets/images/numbers/number_five.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('itsutsu', style: TextStyle(fontSize: 18)),
                      Text('Five', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                      onTap: () {
                        player.play(AssetSource(
                            'sounds/numbers/number_five_sound.mp3'));
                      },
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          //##############################################################
          //##############################################################
          Container(
            height: 100,
            color: Color(0xffEF9235),
            child: Row(
              children: [
                Container(
                  color: Color.fromARGB(255, 248, 227, 164),
                  child: Image.asset('assets/images/numbers/number_six.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('muttsu', style: TextStyle(fontSize: 18)),
                      Text('Six', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource('sounds/numbers/number_six_sound.mp3'));
                      },
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          //##############################################################
          //##############################################################
          Container(
            height: 100,
            color: Color(0xffEF9235),
            child: Row(
              children: [
                Container(
                  color: Color.fromARGB(255, 248, 227, 164),
                  child: Image.asset('assets/images/numbers/number_seven.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('nanatsu', style: TextStyle(fontSize: 18)),
                      Text('Seven', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                      onTap: () {
                        player.play(AssetSource(
                            'sounds/numbers/number_seven_sound.mp3'));
                      },
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          //##############################################################
          //##############################################################
          Container(
            height: 100,
            color: Color(0xffEF9235),
            child: Row(
              children: [
                Container(
                  color: Color.fromARGB(255, 248, 227, 164),
                  child: Image.asset('assets/images/numbers/number_eight.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('yattsu', style: TextStyle(fontSize: 18)),
                      Text('Eight', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                      onTap: () {
                        player.play(AssetSource(
                            'sounds/numbers/number_eight_sound.mp3'));
                      },
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          //##############################################################
          //##############################################################
          Container(
            height: 100,
            color: Color(0xffEF9235),
            child: Row(
              children: [
                Container(
                  color: Color.fromARGB(255, 248, 227, 164),
                  child: Image.asset('assets/images/numbers/number_nine.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('kokonotsu', style: TextStyle(fontSize: 18)),
                      Text('Nine', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                      onTap: () {
                        player.play(AssetSource(
                            'sounds/numbers/number_nine_sound.mp3'));
                      },
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          //##############################################################
          //##############################################################
          Container(
            height: 100,
            color: Color(0xffEF9235),
            child: Row(
              children: [
                Container(
                  color: Color.fromARGB(255, 248, 227, 164),
                  child: Image.asset('assets/images/numbers/number_ten.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('tou', style: TextStyle(fontSize: 18)),
                      Text('Ten', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource('sounds/numbers/number_ten_sound.mp3'));
                      },
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          //##############################################################
          //##############################################################
        ],
      ),
// ###################################################################
    );
  }
}
