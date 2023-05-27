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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isChecked = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;
  bool _isChecked6 = false;
  bool _isChecked7 = false;
  bool _isChecked8 = false;
  bool _isChecked9 = false;
  bool _isChecked10 = false;
  bool _isChecked11 = false;
  bool _isChecked12 = false;

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: '텍스트를 입력하세요',
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'today monsil',//상단위로 위치하게 해야함
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
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(right: 0),
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E3D1),
                    borderRadius: BorderRadius.circular(46),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: _isChecked7,
                            onChanged: (value) {
                              setState(() {
                                _isChecked7 = value!;
                              });
                            },
                          ),
                          Text(
                            '산책갔어요',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 20),
                          Checkbox(
                            value: _isChecked8,
                            onChanged: (value) {
                              setState(() {
                                _isChecked2 = value!;
                              });
                            },
                          ),
                          Text(
                            '쇼핑했어요',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: _isChecked9,
                            onChanged: (value) {
                              setState(() {
                                _isChecked9 = value!;
                              });
                            },
                          ),
                          Text(
                            '미용했어요',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 20),
                          Checkbox(
                            value: _isChecked10,
                            onChanged: (value) {
                              setState(() {
                                _isChecked10 = value!;
                              });
                            },
                          ),
                          Text(
                            '친구를 만났어요',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: _isChecked11,
                            onChanged: (value) {
                              setState(() {
                                _isChecked11 = value!;
                              });
                            },
                          ),
                          Text(
                            '놀러갔어요',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 20),
                          Checkbox(
                            value: _isChecked12,
                            onChanged: (value) {
                              setState(() {
                                _isChecked12 = value!;
                              });
                            },
                          ),
                          Text(
                            '깨끗해졌어요',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ),
          ),











      /* 파이어베이스 수정부분
              child: Row(
                children: [
                    Checkbox(
                      value: _ischecked,
                      onChanged: (value){
                        setState(() {
                          _ischecked=value!;
                        });
                        if(value==true){
                          Future<int> count = get("May", "happy");
                          count.then((value) => {
                          if(value==-1){
                            createData("May")
                          }else{
                            print("업데이트전"),
                            statUpdate("May", "happy", value+1)
                          }
                          });
                        }else{
                          Future<int> count = get("May", "happy");
                          count.then((value) => {
                          if(value==-1){
                            createData("May")
                          }else{
                            print("업데이트전"),
                            statUpdate("May", "happy", value-1)
                          }
                          });
                        }
                      // Future<int> count = get("May", "happy");
                      // count.then((value) => {
                      // if(value==-1){
                      //   createData("May")
                      // }else{
                      //   print("업데이트전"),
                      //   statUpdate("May", "happy", value+1)
                      // }
                      // });
                    })
                ],
              ),
              */

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        '행복했어요',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 20),
                      Checkbox(
                        value: _isChecked2,
                        onChanged: (value) {
                          setState(() {
                            _isChecked2 = value!;
                          });
                        },
                      ),
                      Text(
                        '즐거웠어요',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: _isChecked3,
                        onChanged: (value) {
                          setState(() {
                            _isChecked3 = value!;
                          });
                        },
                      ),
                      Text(
                        '상쾌했어요',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 20),
                      Checkbox(
                        value: _isChecked4,
                        onChanged: (value) {
                          setState(() {
                            _isChecked4 = value!;
                          });
                        },
                      ),
                      Text(
                        '짜증났어요',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: _isChecked5,
                        onChanged: (value) {
                          setState(() {
                            _isChecked5 = value!;
                          });
                        },
                      ),
                      Text(
                        '힘들어요(지금내가..)',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 20),
                      Checkbox(
                        value: _isChecked6,
                        onChanged: (value) {
                          setState(() {
                            _isChecked6 = value!;
                          });
                        },
                      ),
                      Text(
                        '우아아',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
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
