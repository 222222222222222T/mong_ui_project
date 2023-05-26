import 'package:flutter/material.dart';
import 'fourScreen.dart';
import 'sevenScreen.dart';
class sixScreen extends StatelessWidget {
  const sixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffFAF9E9),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(65, 30, 0, 0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('2023.5.10')
              ),
            ),
            Flexible(child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('month statistics'),
                  Container(

                    padding: EdgeInsets.fromLTRB(30, 7, 0, 0),
                    decoration: BoxDecoration(
                      color: Color(0xffFCF5B6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 130,
                    height: 30,
                    child: Text('I do'),
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
                        )
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
                            margin: EdgeInsets.fromLTRB(33, 0, 0, 0),
                            child: Text('#eating')),
                        Container(
                            margin: EdgeInsets.fromLTRB(33, 0, 0, 0),
                            child: Text('#walking')),
                        Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text('#shopping'))
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
                width: 350, height: 300,
                child: Column(

                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('2023.5.10'),
                          Container(

                            padding: EdgeInsets.fromLTRB(30, 7, 0, 0),
                            decoration: BoxDecoration(
                              color: Color(0xffFCF5B6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 130,
                            height: 30,
                            child: Text('I do'),
                          )
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
                              child: Text('#eating')),
                          Container(
                              margin: EdgeInsets.fromLTRB(37, 0, 0, 0),
                              child: Text('#walking')),
                          Container(
                              margin: EdgeInsets.fromLTRB(27, 0, 0, 0),
                              child: Text('#shopping'))
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