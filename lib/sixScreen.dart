import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'fourScreen.dart';
import 'sevenScreen.dart';
import 'eightScreen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
// sfs
class sixScreen extends StatefulWidget {
  final Object month;
  final Object day;
  const sixScreen(this.day,this.month);

  @override
  State<sixScreen> createState() => _sixScreenState();
}

class _sixScreenState extends State<sixScreen> {
  int a=0;
  int b=0;
  int c=0;
  int d=0;
  int e=0;
  int f=0;
  bool check = false;
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  @override
  void initState(){
    data=[_ChartData(a, "walk"),
      _ChartData(b, "shopping"),
      _ChartData(c, "cutting"),
      _ChartData(d, "meeting"),
      _ChartData(e, "trip"),
      _ChartData(f, "shower"),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

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
                    '<   2023 . ${widget.month} . ${widget.day}   >',
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
                  Checkbox(value: check, onChanged:(value){
                    setState(() {
                      Future<int> a1 =Accumulatorget(widget.month, "walk");
                      Future<int> a2 =Accumulatorget(widget.month, "shopping");
                      Future<int> a3 =Accumulatorget(widget.month, "cutting");
                      Future<int> a4 =Accumulatorget(widget.month, "meeting");
                      Future<int> a5 =Accumulatorget(widget.month, "trip");
                      Future<int> a6 =Accumulatorget(widget.month, "shower");
                      a1.then((value) => {print(value)});
                      a2.then((value) => {b=value});
                      a3.then((value) => {c=value});
                      a4.then((value) => {d=value});
                      a5.then((value) => {e=value});
                      a6.then((value) => {f=value});
                      check=value!;
                      data=[_ChartData(a, "walk"),
                        _ChartData(b, "shopping"),
                        _ChartData(c, "cutting"),
                        _ChartData(d, "meeting"),
                        _ChartData(e, "trip"),
                        _ChartData(f, "shower"),
                      ];

                    });
                  })
                  ,
                  Text('이번 달 몽실이가 한 것은?' ,
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
                          MaterialPageRoute(builder: (context) => eightScreen(widget.day,widget.month)),
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
                          'I Feel 보러가기',
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
                    // Row(
                    //   children: [
                    //     Container(
                    //         margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    //         decoration: BoxDecoration(
                    //           color: Color(0xffFCF5B6),
                    //           borderRadius: BorderRadius.circular(7),
                    //         ),
                    //         width: 20, height: 160
                    //     ),
                    //     Container(
                    //         margin: EdgeInsets.fromLTRB(60, 40, 0, 0),
                    //         decoration: BoxDecoration(
                    //           color: Color(0xffFCF5B6),
                    //           borderRadius: BorderRadius.circular(7),
                    //         ),
                    //         width: 20, height: 120
                    //     ),
                    //     Container(
                    //         margin: EdgeInsets.fromLTRB(60, 80, 0, 0),
                    //         decoration: BoxDecoration(
                    //           color: Color(0xffFCF5B6),
                    //           borderRadius: BorderRadius.circular(7),
                    //         ),
                    //         width: 20, height: 80
                    //     ),
                    //     Container(
                    //         margin: EdgeInsets.fromLTRB(60, 100, 0, 0),
                    //         decoration: BoxDecoration(
                    //           color: Color(0xffFCF5B6),
                    //           borderRadius: BorderRadius.circular(7),
                    //         ),
                    //         width: 20, height: 60
                    //     ),
                    //   ],
                    // ),
                    // Container(
                    //     decoration: BoxDecoration(
                    //       color: Color(0xffC2BDAB),
                    //     ),
                    //     width: 350, height: 1
                    // ),
                    Container(
                      height:180,
                      width: 380,
                      child:Center(
                          child:SfCartesianChart(

                              primaryXAxis: CategoryAxis(),
                              primaryYAxis: NumericAxis(minimum: 0, maximum: 20, interval: 4),
                              tooltipBehavior: _tooltip,
                              series: <ChartSeries<_ChartData, String>>[
                                ColumnSeries<_ChartData, String>(
                                    dataSource: data,
                                    xValueMapper: (_ChartData data, _) => data.stat,
                                    yValueMapper: (_ChartData data, _) => data.Acount,
                                    name: 'Gold',
                                    color: Color.fromRGBO(8, 142, 255, 1))
                              ])
                      )
                      ,
                    )


                    // Row(
                    //   children: [
                    //     Container(
                    //         margin: EdgeInsets.fromLTRB(38, 0, 0, 0),
                    //         child: Text('# 산책',
                    //           style: TextStyle(
                    //               fontSize: 15,
                    //               fontFamily: '나눔손글씨',
                    //               fontWeight: FontWeight.bold),
                    //         )),
                    //     Container(
                    //         margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                    //         child: Text('# 쇼핑',
                    //           style: TextStyle(
                    //               fontSize: 16,
                    //               fontFamily: '나눔손글씨',
                    //               fontWeight: FontWeight.bold),
                    //         )),
                    //     Container(
                    //         margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    //         child: Text('# 여행',
                    //           style: TextStyle(
                    //               fontSize: 15,
                    //               fontFamily: '나눔손글씨',
                    //               fontWeight: FontWeight.bold),
                    //         )),
                    //     Container(
                    //         margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    //         child: Text('# 병원',
                    //           style: TextStyle(
                    //               fontSize: 15,
                    //               fontFamily: '나눔손글씨',
                    //               fontWeight: FontWeight.bold),
                    //         )),
                    //     /* Container(
                    //         margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    //         child: Text('# ㅇㅇ',
                    //           style: TextStyle(
                    //               fontSize: 15,
                    //               fontFamily: '나눔손글씨',
                    //               fontWeight: FontWeight.bold),
                    //         )), */
                    //
                    //   ],
                    // )





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
                              child: Text('# 산책',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: '나눔손글씨',
                                    fontWeight: FontWeight.bold),
                              )
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                              child: Text('# 쇼핑',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: '나눔손글씨',
                                    fontWeight: FontWeight.bold),)),
                          Container(
                            margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Text('# 여행',
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
  }
}

class _ChartData {
  int Acount;
  String stat;
  _ChartData(this.Acount,this.stat);
}

// class SubscriberSeries {
//   Object month;
//   Future<int> Acount;
//   String stat;
//   SubscriberSeries(this.month,this.Acount,this.stat);
// }
Future<int> Accumulatorget(Object Month, String stat) async {
  final ref = FirebaseDatabase.instance.ref();
  final snapshot = await ref.child('users/$Month/accumulator/$stat').get();
  if (snapshot.exists) {
    return snapshot.value as int;
  } else {
    return -1;
  }
}
