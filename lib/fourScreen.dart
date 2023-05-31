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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>sixScreen(_selectedDay?.day.toString() as Object,_selectedDay?.month.toString() as Object)));
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
              (date=='1' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog1.jpg"),
                ),
              )
                  :

              (date=='2' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog2.png"),
                ),
              )
                  :

              (date=='3' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog3.png"),
                ),
              )
                  :

              (date=='4' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog4.png"),
                ),
              )
                  :

              (date=='9' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog5.png"),
                ),
              )
                  :

              (date=='10' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog6.png"),
                ),
              )
                  :

              (date=='11' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog7.png"),
                ),
              )
                  :


              (date=='14' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog8.png"),
                ),
              )
                  :
              (date=='15' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog9.png"),
                ),
              )
                  :
              (date == '16' && month == '5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog10.png"),
                ),
              )
                  :
              (date=='17' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog11.png"),
                ),
              )
                  :
              (date=='18' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog12.png"),
                ),
              )
                  :
              (date=='19' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog13.png"),
                ),
              )
                  :
              (date=='20' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog14.png"),
                ),
              )
                  :
              (date=='24' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog15.png"),
                ),
              )
                  :
              (date=='25' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog6.png"),
                ),
              )
                  :
              (date=='26' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog7.png"),
                ),
              )
                  :
              (date=='27' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog8.png"),
                ),
              )
                  :
              (date=='28' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog3.png"),
                ),
              )
                  :
              (date=='29' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog11.png"),
                ),
              )
                  :
              (date=='31' && month=='5')
                  ? Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE7E3D1),
                ),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("imageFile/dog13.png"),
                ),
              )
                  :
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
  else{
    return Container(
        width: 373,
        height: 390,
        padding: EdgeInsets.all(0),
        child:Column(
            children:[
              Text(
                date,
                style: TextStyle(fontSize: 16,color: Color(0xffE7E3D1),),
              ),
              Container(
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

