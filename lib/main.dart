import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[800],
          appBar: AppBar(
            title: Text('Ask me Anything'),
            backgroundColor: Colors.lightBlueAccent,
          ),
          body: magic_8_ball(),
        ),
      ),
    );

class magic_8_ball extends StatefulWidget {
  const magic_8_ball({super.key});

  @override
  State<magic_8_ball> createState() => _magic_8_ballState();
}

class _magic_8_ballState extends State<magic_8_ball> {
  int Ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            //TextButton is used to change the image into button
            child: TextButton(
                //onPressed is a required key for the TextButton class which tells the compiler what to do when the button is pressed
                onPressed: () {
                  setState(() {
                    Ballnumber = Random().nextInt(5) + 1;
                  });
                },
                //$ sign is used to update the variable as a part of the string
                child: Image.asset('images/ball$Ballnumber.png')),
          ),
        ],
      ),
    );
  }
}
