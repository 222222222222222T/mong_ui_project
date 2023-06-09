import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:image_picker/image_picker.dart';
import 'fourScreen.dart';
import 'dart:io';

class fiveScreen extends StatefulWidget {
  final Object day;
  final Object month;

  const fiveScreen(this.day, this.month);

  @override
  State<fiveScreen> createState() => _fiveScreenState();
}

class _fiveScreenState extends State<fiveScreen> {
  // void init

  bool check = false;
  bool _isChecked1 = false;
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
  XFile? _pickedFile;
  String imageUrl = '';


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
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Scaffold(
          backgroundColor: Color(0xFFF9F9E9),
          body: ListView(
            children: <Widget>[
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 80),
                child: Text(
                  '<         2023.5.13        >',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: '나눔손글씨'),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'today monsil', //상단위로 위치하게 해야함
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: '나눔손글씨',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 100),
                      TextField(
                        // controller: _textEditingController,
                        decoration: InputDecoration(
                          hintText: '   오늘의 일기를 입력하세요',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16),
                        ),
                       // onEditingComplete: saveDataToFirebase, // 텍스트 입력 완료 시 호출되는 함수 설정

                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 60),
                child: Text(
                  'photo',
                  style: TextStyle(
                    fontFamily: '나눔손글씨',
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child:Row(
                  children: [
                    if (_pickedFile == null)
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(left: 30),
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0xFFE7E3D1),
                            borderRadius: BorderRadius.circular(46),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add_a_photo),
                            onPressed: () {
                              _showBottomSheet();
                            },
                          ),
                        ),
                      )
                    else
                      new GestureDetector(
                        onTap: (){
                          _showBottomSheet();
                        },
                        child: Center(
                          child: new Container(
                            margin: EdgeInsets.only(left:30),
                            width: 350, height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(46),
                              image: DecorationImage(
                                  image: FileImage(File(_pickedFile!.path)),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                  ],
                )
                //
                // Container(
                //   margin: EdgeInsets.only(right: 0),
                //   width: 350,
                //   height: 200,
                //   decoration: BoxDecoration(
                //     color: Color(0xFFE7E3D1),
                //     borderRadius: BorderRadius.circular(46),
                //   ),
                //   child: IconButton(
                //     icon: Icon(Icons.add_a_photo),
                //     onPressed: () {
                //       _showBottomSheet();
                //     },
                //   ),
                // ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Text(
                      'Today Tag',
                      style: TextStyle(
                        fontFamily: '나눔손글씨',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Checkbox(value: check,
                        onChanged: (value){
                          setState(() {
                            Future<int> count1 = get(widget.month, widget.day, "happy");
                            Future<int> count2 = get(widget.month, widget.day, "funny");
                            Future<int> count3 = get(widget.month, widget.day, "refreshing");
                            Future<int> count4 = get(widget.month, widget.day, "annoying");
                            Future<int> count5 = get(widget.month, widget.day, "tired");
                            Future<int> count6 = get(widget.month, widget.day, "sad");
                            Future<int> count7 = get(widget.month, widget.day, "walk");
                            Future<int> count8 = get(widget.month, widget.day, "shopping");
                            Future<int> count9 = get(widget.month, widget.day, "cutting");
                            Future<int> count10 = get(widget.month, widget.day, "meeting");
                            Future<int> count11 = get(widget.month, widget.day, "trip");
                            Future<int> count12 = get(widget.month, widget.day, "shower");
                            count1.then((c1) => {
                              if (c1 == 1) {print("1바꿈"), _isChecked1 = true}
                            });
                            count2.then((c2) => {
                              if (c2 == 1) {print("2바꿈"), _isChecked2 = true}
                            });
                            count3.then((c3) => {
                              if (c3 == 1) {print("3바꿈"), _isChecked3 = true}
                            });
                            count4.then((c4) => {
                              if (c4 == 1) {print("4바꿈"), _isChecked4 = true}
                            });
                            count5.then((c5) => {
                              if (c5 == 1) {print("5바꿈"), _isChecked5 = true}
                            });
                            count6.then((c6) => {
                              if (c6 == 1) {print("6바꿈"), _isChecked6 = true}
                            });
                            count7.then((c7) => {
                              if (c7 == 1) {print("7바꿈"), _isChecked7 = true}
                            });
                            count8.then((c8) => {
                              if (c8 == 1) {print("8바꿈"), _isChecked8 = true}
                            });
                            count9.then((c9) => {
                              if (c9 == 1) {print("9바꿈"), _isChecked9 = true}
                            });
                            count10.then((c10) => {
                              if (c10 == 1) {print("10바꿈"), _isChecked10 = true}
                            });
                            count11.then((c11) => {
                              if (c11 == 1) {print("11바꿈"), _isChecked11 = true}
                            });
                            count12.then((c12) => {
                              if (c12 == 1) {print("12바꿈"), _isChecked12 = true}
                            });
                            check=value!;
                          });
                        }),
                  ],
                )
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
                  'I do',
                  style: TextStyle(
                    fontFamily: '나눔손글씨',
                    fontSize: 30,
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
                                  if (value == true) {
                                    Future<int> count =
                                        get(widget.month, widget.day, "walk");
                                    count.then((v) => {
                                          if (v == -1)
                                            {
                                              createData(widget.month,widget.day, "walk"),
                                            },
                                          statUpdate(widget.month, widget.day,"walk", v + 1),
                                        });
                                    Future<int> Acount = Accumulatorget(widget.month, "walk");
                                    Acount.then((av)=>{
                                      statAccumulatorUpdate(widget.month,"walk",av+1)
                                    });

                                  } else {
                                    Future<int> count =get(widget.month, widget.day, "walk");
                                    count.then((v) => {
                                      statUpdate(widget.month, widget.day, "walk", v - 1),
                                    });
                                    Future<int> Acount = Accumulatorget(widget.month, "walk");
                                    Acount.then((av)=>{
                                      statAccumulatorUpdate(widget.month,"walk",av-1)
                                    });

                                  }
                                },
                              ),
                              Text(
                                '바깥 구경 최고!',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 20),
                              Checkbox(
                                value: _isChecked8,
                                onChanged: (value) {
                                  setState(() {
                                    _isChecked8 = value!;
                                  });
                                  if (value == true) {
                                    Future<int> count = get(
                                        widget.month, widget.day, "shopping");
                                    count.then((v) => {
                                          if (v == -1)
                                            {
                                              createData(widget.month,
                                                  widget.day, "shopping"),
                                            },
                                          statUpdate(widget.month, widget.day,
                                              "shopping", v + 1)
                                        });
                                    Future<int> Acount = Accumulatorget(widget.month, "shopping");
                                    Acount.then((av)=>{
                                      statAccumulatorUpdate(widget.month,"shopping",av+1)
                                    });

                                  } else {
                                    Future<int> count = get(
                                        widget.month, widget.day, "shopping");
                                    count.then((v) => {
                                          statUpdate(widget.month, widget.day,
                                              "shopping", v - 1)
                                        });
                                    Future<int> Acount = Accumulatorget(widget.month, "shopping");
                                    Acount.then((av)=>{
                                      statAccumulatorUpdate(widget.month,"shopping",av-1)
                                    });

                                  }
                                },
                              ),
                              Text(
                                '쇼핑 두손 가득',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold,
                                ),
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
                                  if (value == true) {
                                    Future<int> count = get(
                                        widget.month, widget.day, "cutting");
                                    count.then((v) => {
                                          if (v == -1)
                                            {
                                              createData(widget.month,
                                                  widget.day, "cutting"),
                                            },
                                          statUpdate(widget.month, widget.day,
                                              "cutting", v + 1)
                                        });
                                    Future<int> Acount = Accumulatorget(widget.month, "cutting");
                                    Acount.then((av)=>{
                                      statAccumulatorUpdate(widget.month,"cutting",av+1)
                                    });

                                  } else {
                                    Future<int> count = get(
                                        widget.month, widget.day, "cutting");
                                    count.then((v) => {
                                          statUpdate(widget.month, widget.day,
                                              "cutting", v - 1)
                                        });
                                    Future<int> Acount = Accumulatorget(widget.month, "cutting");
                                    Acount.then((av)=>{
                                      statAccumulatorUpdate(widget.month,"cutting",av-1)
                                    });

                                  }
                                },
                              ),
                              Text(
                                '예쁘게 미용했어요',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 20),
                              Checkbox(
                                value: _isChecked10,
                                onChanged: (value) {
                                  setState(() {
                                    _isChecked10 = value!;
                                  });
                                  if (value == true) {
                                    Future<int> count = get(
                                        widget.month, widget.day, "meeting");
                                    count.then((v) => {
                                          if (v == -1)
                                            {
                                              createData(widget.month,
                                                  widget.day, "meeting"),
                                            },
                                          statUpdate(widget.month, widget.day,
                                              "meeting", v + 1)
                                        });
                                    Future<int> Acount = Accumulatorget(widget.month, "meeting");
                                    Acount.then((av)=>{
                                      statAccumulatorUpdate(widget.month,"meeting",av+1)
                                    });

                                  } else {
                                    Future<int> count = get(
                                        widget.month, widget.day, "meeting");
                                    count.then((v) => {
                                          statUpdate(widget.month, widget.day,
                                              "meeting", v - 1)
                                        });
                                    Future<int> Acount = Accumulatorget(widget.month, "meeting");
                                    Acount.then((av)=>{
                                      statAccumulatorUpdate(widget.month,"meeting",av-1)
                                    });

                                  }
                                },
                              ),
                              Text(
                                '친구 만났어요',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold,
                                ),
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
                                  if (value == true) {
                                    Future<int> count =
                                        get(widget.month, widget.day, "trip");
                                    count.then((v) => {
                                          if (v == -1)
                                            {
                                              createData(widget.month,
                                                  widget.day, "trip"),
                                            },
                                          statUpdate(widget.month, widget.day,
                                              "trip", v + 1)
                                        });
                                    Future<int> Acount = Accumulatorget(widget.month, "trip");
                                    Acount.then((av)=>{
                                      statAccumulatorUpdate(widget.month,"trip",av+1)
                                    });

                                  } else {
                                    Future<int> count =
                                        get(widget.month, widget.day, "trip");
                                    count.then((v) => {
                                          statUpdate(widget.month, widget.day,
                                              "trip", v - 1)
                                        });
                                    Future<int> Acount = Accumulatorget(widget.month, "trip");
                                    Acount.then((av)=>{
                                      statAccumulatorUpdate(widget.month,"trip",av-1)
                                    });

                                  }
                                },
                              ),
                              Text(
                                '놀러갔어요',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: '나눔손글씨',
                                ),
                              ),
                              SizedBox(width: 20),
                              Checkbox(
                                value: _isChecked12,
                                onChanged: (value) {
                                  setState(() {
                                    _isChecked12 = value!;
                                  });
                                  if (value == true) {
                                    Future<int> count =
                                        get(widget.month, widget.day, "shower");
                                    count.then((v) => {
                                          if (v == -1)
                                            {
                                              createData(widget.month,
                                                  widget.day, "shower"),
                                            },
                                          statUpdate(widget.month, widget.day,
                                              "shower", v + 1)
                                        });
                                    Future<int> Acount = Accumulatorget(widget.month, "shower");
                                    Acount.then((av)=>{
                                      statAccumulatorUpdate(widget.month,"shower",av+1)
                                    });

                                  } else {
                                    Future<int> count =
                                        get(widget.month, widget.day, "shower");
                                    count.then((v) => {
                                          statUpdate(widget.month, widget.day,
                                              "shower", v - 1)
                                        });
                                    Future<int> Acount = Accumulatorget(widget.month, "shower");
                                    Acount.then((av)=>{
                                      statAccumulatorUpdate(widget.month,"shower",av-1)
                                    });

                                  }
                                },
                              ),
                              Text(
                                '씻김 당했어요',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 60),
                child: Text(
                  'I feel',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: '나눔손글씨',
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
                            value: _isChecked1,
                            onChanged: (value) {
                              setState(() {
                                _isChecked1 = value!;
                              });
                              if (value == true) {
                                Future<int> count =
                                    get(widget.month, widget.day, "happy");
                                count.then((v) => {
                                      if (v == -1)
                                        {
                                          createData(widget.month, widget.day,
                                              "happy"),
                                        },
                                      statUpdate(widget.month, widget.day,
                                          "happy", v + 1)
                                    });
                                Future<int> Acount = Accumulatorget(widget.month, "happy");
                                Acount.then((av)=>{
                                  statAccumulatorUpdate(widget.month,"happy",av+1)
                                });

                              } else {
                                Future<int> count =
                                    get(widget.month, widget.day, "happy");
                                count.then((v) => {
                                      statUpdate(widget.month, widget.day,
                                          "happy", v - 1)
                                    });
                                Future<int> Acount = Accumulatorget(widget.month, "happy");
                                Acount.then((av)=>{
                                  statAccumulatorUpdate(widget.month,"happy",av-1)
                                });

                              }
                            },
                          ),
                          Text(
                            '행복한 하루!!',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: '나눔손글씨',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 20),
                          Checkbox(
                            value: _isChecked2,
                            onChanged: (value) {
                              setState(() {
                                _isChecked2 = value!;
                              });
                              if (value == true) {
                                Future<int> count =
                                    get(widget.month, widget.day, "funny");
                                count.then((v) => {
                                      if (v == -1)
                                        {
                                          createData(widget.month, widget.day,
                                              "funny"),
                                        },
                                      statUpdate(widget.month, widget.day,
                                          "funny", v + 1)
                                    });
                                Future<int> Acount = Accumulatorget(widget.month, "funny");
                                Acount.then((av)=>{
                                  statAccumulatorUpdate(widget.month,"funny",av+1)
                                });

                              } else {
                                Future<int> count =
                                    get(widget.month, widget.day, "funny");
                                count.then((v) => {
                                      statUpdate(widget.month, widget.day,
                                          "funny", v - 1)
                                    });
                                Future<int> Acount = Accumulatorget(widget.month, "funny");
                                Acount.then((av)=>{
                                  statAccumulatorUpdate(widget.month,"funny",av-1)
                                });

                              }
                            },
                          ),
                          Text(
                            '즐거운 데이트',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: '나눔손글씨',
                              fontWeight: FontWeight.bold,
                            ),
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
                              if (value == true) {
                                Future<int> count =
                                    get(widget.month, widget.day, "refreshing");
                                count.then((v) => {
                                      if (v == -1)
                                        {
                                          createData(widget.month, widget.day,
                                              "refreshing"),
                                        },
                                      statUpdate(widget.month, widget.day,
                                          "refreshing", v + 1)
                                    });
                                Future<int> Acount = Accumulatorget(widget.month, "refreshing");
                                Acount.then((av)=>{
                                  statAccumulatorUpdate(widget.month,"refreshing",av+1)
                                });

                              } else {
                                Future<int> count =
                                    get(widget.month, widget.day, "refreshing");
                                count.then((v) => {
                                      statUpdate(widget.month, widget.day,
                                          "refreshing", v - 1)
                                    });
                                Future<int> Acount = Accumulatorget(widget.month, "refreshing");
                                Acount.then((av)=>{
                                  statAccumulatorUpdate(widget.month,"refreshing",av-1)
                                });

                              }
                            },
                          ),
                          Text(
                            '너무 상쾌해요',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: '나눔손글씨',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 20),
                          Checkbox(
                            value: _isChecked4,
                            onChanged: (value) {
                              setState(() {
                                _isChecked4 = value!;
                              });
                              if (value == true) {
                                Future<int> count =
                                    get(widget.month, widget.day, "annoying");
                                count.then((v) => {
                                      if (v == -1)
                                        {
                                          createData(widget.month, widget.day,
                                              "annoying"),
                                        },
                                      statUpdate(widget.month, widget.day,
                                          "annoying", v + 1)
                                    });
                                Future<int> Acount = Accumulatorget(widget.month, "annoying");
                                Acount.then((av)=>{
                                  statAccumulatorUpdate(widget.month,"annoying",av+1)
                                });

                              } else {
                                Future<int> count =
                                    get(widget.month, widget.day, "annoying");
                                count.then((v) => {
                                      statUpdate(widget.month, widget.day,
                                          "annoying", v - 1)
                                    });
                                Future<int> Acount = Accumulatorget(widget.month, "annoying");
                                Acount.then((av)=>{
                                  statAccumulatorUpdate(widget.month,"annoying",av-1)
                                });
                              }
                            },
                          ),
                          Text(
                            '오늘 아팠어요',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: '나눔손글씨',
                              fontWeight: FontWeight.bold,
                            ),
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
                              if (value == true) {
                                Future<int> count =
                                    get(widget.month, widget.day, "tired");
                                count.then((v) => {
                                      if (v == -1)
                                        {
                                          createData(widget.month, widget.day,
                                              "tired"),
                                        },
                                      statUpdate(widget.month, widget.day,
                                          "tired", v + 1)
                                    });
                                Future<int> Acount = Accumulatorget(widget.month, "tired");
                                Acount.then((av)=>{
                                  statAccumulatorUpdate(widget.month,"tired",av+1)
                                });

                              } else {
                                Future<int> count =
                                    get(widget.month, widget.day, "tired");
                                count.then((v) => {
                                      statUpdate(widget.month, widget.day,
                                          "tired", v - 1)
                                    });
                                Future<int> Acount = Accumulatorget(widget.month, "tired");
                                Acount.then((av)=>{
                                  statAccumulatorUpdate(widget.month,"tired",av-1)
                                });

                              }
                            },
                          ),
                          Text(
                            '여러모로 피곤했어요',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: '나눔손글씨',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 20),
                          Checkbox(
                            value: _isChecked6,
                            onChanged: (value) {
                              setState(() {
                                _isChecked6 = value!;
                              });
                              if (value == true) {
                                Future<int> count =
                                    get(widget.month, widget.day, "sad");
                                count.then((v) => {
                                      if (v == -1)
                                        {
                                          createData(
                                              widget.month, widget.day, "sad"),
                                        },
                                      statUpdate(widget.month, widget.day,
                                          "sad", v + 1)
                                    });
                                Future<int> Acount = Accumulatorget(widget.month, "sad");
                                Acount.then((av)=>{
                                  statAccumulatorUpdate(widget.month,"sad",av+1)
                                });

                              } else {
                                Future<int> count =
                                    get(widget.month, widget.day, "sad");
                                count.then((v) => {
                                      statUpdate(widget.month, widget.day,
                                          "sad", v - 1)
                                    });
                                Future<int> Acount = Accumulatorget(widget.month, "sad");
                                Acount.then((av)=>{
                                  statAccumulatorUpdate(widget.month,"sad",av-1)
                                });

                              }
                            },
                          ),
                          Text(
                            '슬퍼요',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: '나눔손글씨',
                              fontWeight: FontWeight.bold,
                            ),
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
                      // print(widget.argument);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => fourScreen()));
                     // String diaryText = _textEditingController.text;

                    },

                    child: Text(
                      '저장하기',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: '나눔손글씨',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ));
  }

  _showBottomSheet() {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => _getCameraImage(),
              child: const Text('사진찍기'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => _getPhotoLibraryImage(),
              child: const Text('라이브러리에서 불러오기'),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }
  _getCameraImage() async {
    final pickedFile =
    await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _pickedFile = pickedFile;

        Reference referenceRoot = FirebaseStorage.instance.ref();
        Reference referenceDirImages = referenceRoot.child('images');

        Reference referenceImageToUpload = referenceDirImages.child('photo');

        try {
          referenceImageToUpload.putFile(File(pickedFile!.path));
          imageUrl =referenceImageToUpload.getDownloadURL() as String;
        } catch(error) {
          //error
        }
      });
    } else {
      if (kDebugMode) {
        print('이미지 선택안함');
      }
    }
  }

  _getPhotoLibraryImage() async {
    final pickedFile =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _pickedFile = pickedFile;

        Reference referenceRoot = FirebaseStorage.instance.ref();
        Reference referenceDirImages = referenceRoot.child('images');

        Reference referenceImageToUpload = referenceDirImages.child('photo');

        try {
          referenceImageToUpload.putFile(File(pickedFile!.path));
          imageUrl = referenceImageToUpload.getDownloadURL() as String;
        } catch(error) {
          //error
        }
      });
    } else {
      if (kDebugMode) {
        print('이미지 선택안함');
      }
    }
  }

}

void statUpdate(Object Month, Object dating, String stat, int count) {
  DatabaseReference ref = FirebaseDatabase.instance.ref("몽실/$Month/$dating");
  ref.update({
    "$stat": count,
  });
}

void statAccumulatorUpdate(Object Month, String stat, int count) {
  DatabaseReference ref = FirebaseDatabase.instance.ref("몽실/$Month/accumulator");
  ref.update({
    "$stat": count,
  });
}

Future<void> createData(Object Month, Object dating, String stat) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref("몽실/$Month/$dating");
  await ref.set({
    "happy": 0,
    "funny": 0,
    "refreshing": 0,
    "annoying": 0,
    "sad": 0,
    "tired": 0,
    "walk": 0,
    "shopping": 0,
    "cutting": 0,
    "meeting": 0,
    "trip": 0,
    "shower": 0
  });
  await ref.update({
    "$stat": 1,
  });
  print("stat후");
}

Future<void> createAccumlatorData(Object Month, String stat) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref("몽실/$Month/accumulator");
  await ref.set({
    "happy": 0,
    "funny": 0,
    "refreshing": 0,
    "annoying": 0,
    "sad": 0,
    "tired": 0,
    "walk": 0,
    "shopping": 0,
    "cutting": 0,
    "meeting": 0,
    "trip": 0,
    "shower": 0
  });
  await ref.update({
    "$stat": 1,
  });
  print("stat후");
}


Future<int> get(Object Month, Object dating, String stat) async {
  final ref = FirebaseDatabase.instance.ref();
  final snapshot = await ref.child('몽실/$Month/$dating/$stat').get();
  if (snapshot.exists) {
    return snapshot.value as int;
  } else {
    return -1;
  }
}

Future<int> Accumulatorget(Object Month, String stat) async {
  final ref = FirebaseDatabase.instance.ref();
  final snapshot = await ref.child('몽실/$Month/accumulator/$stat').get();
  if (snapshot.exists) {
    return snapshot.value as int;
  } else {
    return -1;
  }
}




















/* 내가 한 이상한 코드
void diaryUpdate(Object month, Object date, String stat, String diaryText) {
  DatabaseReference ref = FirebaseDatabase.instance.ref("users/$month/$date");
  ref.update({
    "$stat": diaryText,
  });
}

 */
/*
final TextEditingController _textEditingController = TextEditingController();

void dispose() {
  _textEditingController.dispose();


 // super.dispose();
}
*/

/*
void diaryUpdate(Object month, Object date, String stat, String diaryText) {
  DatabaseReference ref =
  FirebaseDatabase.instance.reference().child('users/$month/$date');
  ref.update({
    stat: diaryText,
  });
}

 */

// 텍스트 필드에서 입력된 데이터를 Firebase에 저장하는 함수
/*
void saveDataToFirebase() {
  String enteredText = _textEditingController.text;
  // month, date, stat 등에 해당하는 값을 지정하고 호출
  diaryUpdate(CalendarFormat.month, Icons.data_array, "statValue", enteredText);
}


 */
