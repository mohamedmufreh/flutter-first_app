import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Family Members'),
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
                  child: Image.asset('assets/images/colors/color_black.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kuro', style: TextStyle(fontSize: 18)),
                      Text('Black', style: TextStyle(fontSize: 18)),
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
                        player.play(AssetSource('sounds/colors/black.wav'));
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
                  child: Image.asset('assets/images/colors/color_brown.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Chairo', style: TextStyle(fontSize: 18)),
                      Text('Brown', style: TextStyle(fontSize: 18)),
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
                        player.play(AssetSource('sounds/colors/brown.wav'));
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
                  child: Image.asset(
                      'assets/images/colors/color_dusty_yellow.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hokori ppoi kiiro', style: TextStyle(fontSize: 18)),
                      Text('Dusty Brown', style: TextStyle(fontSize: 18)),
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
                            AssetSource('sounds/colors/dusty yellow.wav'));
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
                  child: Image.asset('assets/images/colors/color_gray.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gurē', style: TextStyle(fontSize: 18)),
                      Text('Gray', style: TextStyle(fontSize: 18)),
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
                        player.play(AssetSource('sounds/colors/gray.wav'));
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
                  child: Image.asset('assets/images/colors/color_green.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Midori', style: TextStyle(fontSize: 18)),
                      Text('Green', style: TextStyle(fontSize: 18)),
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
                        player.play(AssetSource('sounds/colors/green.wav'));
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
                  child: Image.asset('assets/images/colors/color_red.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Aka', style: TextStyle(fontSize: 18)),
                      Text('Red', style: TextStyle(fontSize: 18)),
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
                        player.play(AssetSource('sounds/colors/red.wav'));
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
                  child: Image.asset('assets/images/colors/color_white.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Shiro', style: TextStyle(fontSize: 18)),
                      Text('White', style: TextStyle(fontSize: 18)),
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
                        player.play(AssetSource('sounds/colors/white.wav'));
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
                  child: Image.asset('assets/images/colors/yellow.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kiiro', style: TextStyle(fontSize: 18)),
                      Text('Yellow', style: TextStyle(fontSize: 18)),
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
                        player.play(AssetSource('sounds/colors/yellow.wav'));
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
