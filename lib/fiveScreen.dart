import 'dart:ffi';

import 'package:firebase_database/firebase_database.dart';
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
  Future<bool> existing() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child('users/May').get();
    if (snapshot.exists) {
      return true;
    } else {
      return false;
    }
  }

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
          SizedBox(height: 20),
          Container(
            width: 100, // 수정된 가로 크기
            height: 100, // 수정된 세로 크기
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50), // 둥근 모서리 반지름 값
              child: Image.asset(
                'imageFile/foot.png',
                fit: BoxFit.cover,
              ),
            ),
          ),


          SizedBox(height: 25),
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
              child: Row(
                children: [
                    ElevatedButton(onPressed: (){
                      Future<int> count = get("May", "happy");
                      count.then((value) => {
                      if(value==-1){
                        createData("May")
                      }else{
                        print("업데이트전"),
                        statUpdate("May", "happy", value+1)
                      }
                      });
                    }, child: Text("happy"))
                ],
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
void statUpdate(String Month,String stat,int count){
  DatabaseReference ref = FirebaseDatabase.instance.ref("users/$Month");
  ref.update({
    "$stat":count,
  });
}
void createData(String Month){
  DatabaseReference ref = FirebaseDatabase.instance.ref("users/$Month");
  ref.set({
    "happy":0,
    "sad":0,
    "funny":0
    }
  );
}
Future<int> get(String Month, String stat) async {
  final ref = FirebaseDatabase.instance.ref();
  final snapshot = await ref.child('users/$Month/$stat').get();
  if (snapshot.exists) {
    return snapshot.value as int;
  } else {
    return -1;
  }
}
