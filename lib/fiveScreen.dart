import 'package:flutter/material.dart';
import 'fourScreen.dart';

class fiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9E9),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left: 80),
            child: Text(
              '<         2023.5.13        >',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // SizedBox(height: 100),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFFE7E3D1),
                      borderRadius: BorderRadius.circular(46),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFFE7E3D1),
                      borderRadius: BorderRadius.circular(46),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 0)


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  SizedBox(width: 0),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFFE7E3D1),
                      borderRadius: BorderRadius.circular(46),
                    ),
                  ),
                  SizedBox(width: 180),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFFE7E3D1),
                      borderRadius: BorderRadius.circular(46),
                    ),
                  ),
                ],
              ),
          SizedBox(height: 20),
          Center(
            child: Container(
              margin: EdgeInsets.only(right: 0),
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                color: Color(0xFFE7E3D1),
                borderRadius: BorderRadius.circular(46),
              ),
              child: Column(
                children: [
                  Container(), // 상단 공간 차지를 위한 빈 컨테이너
                  Text(
                    'today monsil',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 60),
            child: Text(
              'photo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 0),
          Container(
            margin: EdgeInsets.only(left: 60),
            child: Text(
              '--------------------------------',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              margin: EdgeInsets.only(right: 0),
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFFE7E3D1),
                borderRadius: BorderRadius.circular(46),
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(left: 60),
            child: Text(
              'Today',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 0),
          Container(
            margin: EdgeInsets.only(left: 60),
            child: Text(
              '--------------------------------',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 0),
          Container(
            margin: EdgeInsets.only(left: 60),
            child: Text(
              'I do ~ ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              margin: EdgeInsets.only(right: 0),
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFFE7E3D1),
                borderRadius: BorderRadius.circular(46),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 60),
            child: Text(
              'I feel ~ ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
              margin: EdgeInsets.only(right: 0),
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFFE7E3D1),
                borderRadius: BorderRadius.circular(46),
              ),
            ),
          ),


          SizedBox(height: 90),
          Center(
            child: Container(
              margin: EdgeInsets.only(right: 0),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFFCF5B6),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => fourScreen()));
                },
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          SizedBox(height: 100),

        ],

      ),
    );
  }
}
