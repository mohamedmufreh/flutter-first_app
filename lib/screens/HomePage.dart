import 'package:flutter/material.dart';
import 'package:task_5/screens/Numbers_page.dart';
import 'package:task_5/screens/Family_page.dart';
import 'package:task_5/screens/Colors_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Language Learning App'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            'Your way to learn japanese',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
//-------------------------------------------------------------------

        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NumbersPage();
            }));
          },
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 24),
            color: Colors.orange,
            height: 65,
            width: double.infinity,
            child: Text('Numbers',
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),

//-------------------------------------------------------------------
       
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FamilyPage();
            }));
          },
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 24),
            color: Color.fromARGB(255, 4, 153, 21),
            height: 65,
            width: double.infinity,
            child: Text('Family Members',
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
        
//-------------------------------------------------------------------

        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ColorsPage();
            }));
          },
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 24),
            color: Color.fromARGB(255, 180, 6, 119),
            height: 65,
            width: double.infinity,
            child: Text('Colors',
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),

//-------------------------------------------------------------------
      ]),
    );
  }
}
