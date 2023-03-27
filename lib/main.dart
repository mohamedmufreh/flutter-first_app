import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("first application"),
            backgroundColor: Color.fromARGB(255, 75, 26, 124),
          ),
          body: Center(
            child: Text("Mohamed Ahmed Mofreh", style: TextStyle(fontSize: 24)),
          ))));
}