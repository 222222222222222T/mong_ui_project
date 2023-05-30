import 'package:flutter/material.dart';
import 'fourScreen.dart';
import 'sevenScreen.dart';
import 'sixScreen.dart';
class eightScreen extends StatelessWidget {
  const eightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffFAF9E9),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
              padding: EdgeInsets.fromLTRB(40, 20, 0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                    '<   2023 . 5   >',
                    style: TextStyle(
                      fontFamily: '나눔손글씨',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )
                ),
              ),
            ),
            Flexible(child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('이번 달 몽실이의 기분은?' ,
                      style: TextStyle(
                        fontFamily: '나눔손글씨',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => sixScreen()),
                        );
                      },
                      child:
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 8, 0, 0),
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffFFF0F5),
                          borderRadius: BorderRadius.circular(7),
                        ),

                        child: Text(
                          'I DO 보러가기',
                          style: TextStyle(
                              fontSize: 23,
                              fontFamily: '나눔손글씨',
                              fontWeight: FontWeight.bold),
                        ),

                      )
                  )

                ],
              ),
            ), flex: 7),
            Flexible(child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            decoration: BoxDecoration(
                              color: Color(0xffFCF5B6),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: 20, height: 160
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(60, 40, 0, 0),
                            decoration: BoxDecoration(
                              color: Color(0xffFCF5B6),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: 20, height: 120
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(60, 80, 0, 0),
                            decoration: BoxDecoration(
                              color: Color(0xffFCF5B6),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: 20, height: 80
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(60, 100, 0, 0),
                            decoration: BoxDecoration(
                              color: Color(0xffFCF5B6),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: 20, height: 60
                        ),
                      ],
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Color(0xffC2BDAB),
                        ),
                        width: 350, height: 1
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(38, 0, 0, 0),
                            child: Text('# 기뻐요',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                            margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                            child: Text('# 설레요',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                            margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                            child: Text('# 슬퍼요',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                            margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                            child: Text('# 힘들어요',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold),
                            )),
                        /* Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text('# ㅇㅇ',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold),
                            )), */

                      ],
                    )
                  ],
                )
            ), flex: 4),
            Flexible(child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffE7E3D1),
                    borderRadius: BorderRadius.circular(30)
                ),
                width: 350, height: 400,
                child: Column(

                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('몽실이는 저번달보다~',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: '나눔손글씨',
                                fontWeight: FontWeight.bold),
                          ),

                          /*Container(

                            padding: EdgeInsets.fromLTRB(30, 7, 0, 0),
                            decoration: BoxDecoration(
                              color: Color(0xffFCF5B6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 130,
                            height: 30,
                            child: Text('I do'),
                          )

                           */
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(

                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Color(0xffDAD773),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: 20, height: 160
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(3, 20, 0, 0),
                            decoration: BoxDecoration(
                              color: Color(0xffFCF5B6),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: 20, height: 140
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(30, 40, 0, 0),
                            decoration: BoxDecoration(
                              color: Color(0xffDAD773),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: 20, height: 120
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(3, 60, 0, 0),
                            decoration: BoxDecoration(
                              color: Color(0xffFCF5B6),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: 20, height: 100
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(30, 80, 0, 0),
                            decoration: BoxDecoration(
                              color: Color(0xffDAD773),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: 20, height: 80
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(3, 100, 100, 0),
                            decoration: BoxDecoration(
                              color: Color(0xffFCF5B6),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            width: 20, height: 60
                        )
                      ],
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Color(0xffC2BDAB),
                        ),
                        width: 330, height: 1
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Text('# 행복해요',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: '나눔손글씨',
                                    fontWeight: FontWeight.bold),
                              )
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(45, 0, 0, 0),
                              child: Text('# 설레요',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: '나눔손글씨',
                                    fontWeight: FontWeight.bold),)),
                          Container(
                            margin: EdgeInsets.fromLTRB(45, 0, 0, 0),
                            child: Text('# 슬퍼요',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold),
                            ),)
                        ],
                      ),
                    )
                  ],
                )
            ), flex: 5)
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            color: Color(0xffFCF5B6),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>fourScreen()));},
                    child: Image.asset('imageFile/calendar.PNG', width: 65, height: 65),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>sevenScreen()));},
                    child: Image.asset('imageFile/monglogo.PNG', width: 75, height: 75),),
                  Image.asset('imageFile/tong.PNG', width: 75, height: 75)
                ]
            )
        ),
      ),
    );
  }}