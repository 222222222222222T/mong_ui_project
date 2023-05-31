import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'fourScreen.dart';
import 'sevenScreen.dart';
import 'sixScreen.dart';
class eightScreen extends StatefulWidget {
  final Object month;
  final Object day;
  const eightScreen(this.day,this.month);

  @override
  State<eightScreen> createState() => _eightScreenState();
}

class _eightScreenState extends State<eightScreen> {
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
    data=[_ChartData(a, "happy"),
      _ChartData(b, "funny"),
      _ChartData(c, "refreshing"),
      _ChartData(d, "annoying"),
      _ChartData(e, "tired"),
      _ChartData(f, "sad"),
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
                      Future<int> a1 =Accumulatorget(widget.month, "happy");
                      Future<int> a2 =Accumulatorget(widget.month, "funny");
                      Future<int> a3 =Accumulatorget(widget.month, "refreshing");
                      Future<int> a4 =Accumulatorget(widget.month, "annoying");
                      Future<int> a5 =Accumulatorget(widget.month, "tired");
                      Future<int> a6 =Accumulatorget(widget.month, "sad");
                      a1.then((value) => {
                        print("a바뀜"),
                        print(value),
                      });
                      a2.then((value) => {b=value});
                      a3.then((value) => {c=value});
                      a4.then((value) => {d=value});
                      a5.then((value) => {e=value});
                      a6.then((value) => {f=value});
                      check=value!;
                      data=[_ChartData(a, "happy"),
                        _ChartData(b, "funny"),
                        _ChartData(c, "refreshing"),
                        _ChartData(d, "annoying"),
                        _ChartData(e, "tired"),
                        _ChartData(f, "sad"),
                      ];

                    });
                  }),

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
                          MaterialPageRoute(builder: (context) => sixScreen(widget.day,widget.month)),
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
}
}

class _ChartData {
  int Acount;
  String stat;
  _ChartData(this.Acount,this.stat);
}