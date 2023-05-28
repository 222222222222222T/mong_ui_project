import 'dart:collection';

import 'package:mong_ui/sixScreen.dart';
import 'sevenScreen.dart';
import 'fiveScreen.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';



class fourScreen extends StatelessWidget {
  const fourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffFAF9E9)),
      home: calendar(),
    );
  }
}


class calendar extends StatefulWidget {
  const calendar({Key? key}) : super(key: key);

  @override
  State<calendar> createState() => _calendarState();
}


class _calendarState extends State<calendar> {
  List alist = List<int>.filled(31,0);
  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffFAF9E9),
          elevation: 0.0,
          title:Container(
            margin: EdgeInsets.fromLTRB(0, 30, 30, 0),
            child:TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>sevenScreen()));},
                child: Image(
                  width: 80,
                  height: 70,
                  image: AssetImage('imageFile/setting.png'),
                )

            ),
          )
      ),

      body:content(),
    );
  }
  Widget content(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 373,
          height: 420,
          child: TableCalendar(
            shouldFillViewport: true,
            locale: 'ko-KR',
            firstDay: DateTime.utc(2022,05,01),
            lastDay: DateTime.utc(2023,05,31),
            focusedDay: _focusedDay,
            headerStyle: HeaderStyle(
              titleCentered: true,
              formatButtonVisible: false,
            ),
            daysOfWeekHeight: 40,
            selectedDayPredicate: (day){
              return isSameDay(_selectedDay,day);
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
            onDaySelected: (selectedDay,focusedDay){
              setState(() {
                _selectedDay=selectedDay;
                _focusedDay=focusedDay;
              });
            },
            calendarBuilders: CalendarBuilders(
              defaultBuilder: (context, dateTime, _) {
                return CalendarCellBuilder(context, dateTime, _, 0);
              },
              todayBuilder:  (context, dateTime, _) {
                return CalendarCellBuilder(context, dateTime, _, 1);
              },
              selectedBuilder: (context, dateTime, _) {
                return CalendarCellBuilder(context, dateTime, _, 2);
              },
            ),
          ),
        ),
        Container(
          child:TextButton(
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>fiveScreen(_selectedDay?.day.toString() as Object,_selectedDay?.month.toString() as Object)));
            },
            child: Image(
              width: 400,
              image: AssetImage("imageFile/init.PNG"),
            ),
        )
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0,0),
          width: double.infinity,
          height: 83,
          color: Color(0xffFCF5B6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width:0,),
              Image.asset(
                "imageFile/calendar.PNG",
                width: 65,
                height: 65,
              ),
              Image.asset(
                  "imageFile/monglogo.PNG",
              width: 75,
              height: 75,
              ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>sixScreen()));
              }, child:Image.asset(
                  "imageFile/tong.PNG",
                width: 75,
                height: 75,
              ),

              ),
              SizedBox(width:0,),
            ],
          ),
        ) // 밑에 내비게이션 바
      ],
    );
  }
}




Widget CalendarCellBuilder(BuildContext context, DateTime dateTime, _, int type){
  String date =dateTime.day.toString();
  String month = dateTime.month.toString();
  if(type==0){
    return Container(
        width: 373,
        height: 390,
        padding: EdgeInsets.all(0),
        child:Column(
            children:[
              Text(
                date,
                style: TextStyle(fontSize: 16,color: Color(0xffDBD09E)),
              ),
              // Image.asset("imageFile/d.png")
              (date=='2' && month=='5')?
              Container(
                  child: Image.asset("imageFile/d.png",width: 30,height: 30,),
                  // padding: EdgeInsets.only(top: 1, bottom: 1),
                  width: MediaQuery.of(context).size.width,
                  height:32,
                  decoration: BoxDecoration(
                      shape:BoxShape.circle,
                      color: Color(0xffE7E3D1)
                  )
              ):
              Container(
                // padding: EdgeInsets.only(top: 1, bottom: 1),
                width: MediaQuery.of(context).size.width,
                height:32,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
              )
            ]
        )
    );
  }
  else if(type==2){
    return Container(
        width: 373,
        height: 390,
        padding: EdgeInsets.all(0),
        child:Column(
            children:[
              Text(
                date,
                style: TextStyle(fontSize: 16,color: Colors.blueAccent),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height:32,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  color: Colors.blueAccent,
                ),
              )
            ]
        )
    );
  }
  else{
    return Container(
        width: 373,
        height: 390,
        padding: EdgeInsets.all(0),
        child:Column(
            children:[
              Text(
                date,
                style: TextStyle(fontSize: 16,color: Colors.black),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height:32,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  color: Colors.black,
                ),
              )
            ]
        )
    );
  }
}
class Arguments {
  final String dating;
  Arguments(this.dating);
}

class sb{
  SizedBox sizebox=SizedBox(
    width: 40,
    height: 40,
    child: Container(color: Colors.blue,),
  );
}