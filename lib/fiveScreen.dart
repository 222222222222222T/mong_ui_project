import 'package:flutter/material.dart';


class fiveScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF9F9E9),
        body: Stack(
          children: [
            Positioned(
              left: 55, // 왼쪽 여백
              top: 250, // 상단 여백
              child: Container(
                width: 300,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFE5DEBA),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            Positioned(
              left:40,
              top:175,
              child: Container(
                width:70,
                height:70,
                decoration: BoxDecoration(
                  color: Color(0xFFE5DEBA),
                  borderRadius: BorderRadius.circular(46),
                ),
              ),
            ),
            Positioned(
              left:55,
              top:650,
              child: Container(
                width:300,
                height:180,
                decoration: BoxDecoration(
                  color: Color(0xFFE5DEBA),
                  borderRadius: BorderRadius.circular(46),
                ),
              ),
            ),
            Positioned(
              left:125,
              top:160,
              child: Container(
                width:70,
                height:70,
                decoration: BoxDecoration(
                  color: Color(0xFFE5DEBA),
                  borderRadius: BorderRadius.circular(46),
                ),
              ),
            ),
            Positioned(
              left: 210,
              top:160,
              child: Container(
                width:70,
                height:70,
                decoration: BoxDecoration(
                  color: Color(0xFFE5DEBA),
                  borderRadius: BorderRadius.circular(46),
                ),
              ),
            ),

            Positioned(
              left:300,
              top:175,
              child: Container(
                width:70,
                height:70,
                decoration: BoxDecoration(
                  color: Color(0xFFE5DEBA),
                  borderRadius: BorderRadius.circular(46),
                ),
              ),
            ),
            Positioned(
              left: 160, // 왼쪽 여백
              top: 290, // 상단 여백
              child: Text(
                'Today Monsil',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 100, // 왼쪽 여백
              top: 100, // 상단 여백
              child: Text(
                ' <       2023.5.13       >',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 40, // 왼쪽 여백
              top: 615, // 상단 여백
              child: Text(
                ' photo',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}