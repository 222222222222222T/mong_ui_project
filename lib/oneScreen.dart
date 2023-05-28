//맨처음화면

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class oneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFAF9E9),
        body: Stack(
          children: [
            Positioned(
              left: 50,
              top: 650,
              child: Container(
                width: 300,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFFFCF5B6),
                  borderRadius: BorderRadius.circular(46),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/twoScreen");
                    },
                    child: Text(
                      '오늘몽 시작하기',
                      style: TextStyle(
                        fontFamily: '나눔손글씨',
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                  ),
                ),
              ),
            ),
            Positioned(
              left: 5,
              top: 250,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(46),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(46),
                  child: Image.asset(
                    'imageFile/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}