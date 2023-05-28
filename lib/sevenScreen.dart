import 'package:flutter/material.dart';
import 'sixScreen.dart';
import 'fourScreen.dart';

class sevenScreen extends StatelessWidget {
  const sevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffFAF9E9)),
      home: lastscreen(),
    ));
  }
}


class lastscreen extends StatefulWidget {
  const lastscreen({Key? key}) : super(key: key);
  @override
  State<lastscreen> createState() => _lastscreenState();
}

class _lastscreenState extends State<lastscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lscontent(),
    );
  }

  Widget lscontent(){
    return Center(
        child: Column(


          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 300, 0),
              child:TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>fourScreen()));},
                child: Image.asset(
                  "imageFile/back.png",
                  width: 55,
                  height: 60,
                ),
              ),
            ),

            Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                    color: Color(0xffE7E3D1),
                    border: Border.all(color:Color(0xffE7E3D1),width: 2),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin:EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child:Text("My PET",
                        style: TextStyle(
                            fontSize: 30,
                          fontFamily: '나눔손글씨',
                          fontWeight: FontWeight.bold
                        ),

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(7, 20, 7, 0),
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                shape:BoxShape.circle,
                                color :Color(0xff767673)
                            ),
                            child:Image.asset("imageFile/mon.PNG",width: 90,height: 60,)
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(7, 20, 7, 0),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              shape:BoxShape.circle,
                              color:Color(0xff767673)
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(7, 20, 7, 0),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              shape:BoxShape.circle,
                              color:Color(0xff767673)
                          ),
                        ),
                      ],
                    ), //몽실이사진하고 2개 동그라미 (모더파이 로고 위에있는것)
                    Image.asset("imageFile/modify.PNG",width: 70,height: 70,)
                  ],
                )

            ),
            Container(
              width: 355,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xffe7e3d1),
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18, ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Text(
                              "Setting",
                              style: TextStyle(
                                color: Color(0xff4f4e45),
                                fontSize: 14,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 56,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xfffaf9e9),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            padding: const EdgeInsets.only(left: 16, right: 24, ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset("imageFile/dog_foot.PNG",width: 24,height: 24,)
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      "데이터 관리",
                                      style: TextStyle(
                                        color: Color(0xff1d192b),
                                        fontSize: 23,
                                        fontFamily: "나눔손글씨",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:10),
                  Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xfffaf9e9),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            padding: const EdgeInsets.only(left: 16, right: 24, ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                    child: Image.asset("imageFile/dog_foot.PNG",width: 24,height: 24,)
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      "알람 on/off",
                                      style: TextStyle(
                                        color: Color(0xff4f4e45),
                                        fontSize: 23,
                                        fontFamily: "나눔손글씨",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:10),
                  Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xfffaf9e9),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            padding: const EdgeInsets.only(left: 16, right: 24, ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                    child: Image.asset("imageFile/dog_foot.PNG",width: 24,height: 24,)
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      "글자 스타일",
                                      style: TextStyle(
                                        color: Color(0xff4f4e45),
                                        fontSize: 23,
                                        fontFamily: "나눔손글씨",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:10),
                  Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xfffaf9e9),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            padding: const EdgeInsets.only(left: 16, right: 24, ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                    child: Image.asset("imageFile/dog_foot.PNG",width: 24,height: 24,)
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      "앱 평가하기",
                                      style: TextStyle(
                                        color: Color(0xff4f4e45),
                                        fontSize: 23,
                                        fontFamily: "나눔손글씨",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:10),
                  Container(
                    width: double.infinity,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xfffaf9e9),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            padding: const EdgeInsets.only(left: 16, right: 24, ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                    child: Image.asset("imageFile/dog_foot.PNG",width: 24,height: 24,)
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      "의견 남가기",
                                      style: TextStyle(
                                        color: Color(0xff4f4e45),
                                        fontSize: 23,
                                        fontFamily: "나눔손글씨",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 16, ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[

                      ],
                    ),
                  ),
                ],
              ),
            )
/*
            Container(
                width: 350,
                height: 370,
                decoration: BoxDecoration(
                    color: Color(0xffE7E3D1),
                    border: Border.all(color:Color(0xffE7E3D1),width: 2),
                    borderRadius: BorderRadius.circular(12)
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Container(
                      margin:EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Row(
                        children: [
                          Image.asset("imageFile/rcircle.png", width: 15,height: 15,),
                          Container(
                              margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text("데이터 관리",
                                style: TextStyle(
                                    fontSize: 25,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold,
                                ),)
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Row(
                        children: [
                          Image.asset("imageFile/rcircle.png", width: 20,height: 20,),
                          Container(
                              margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text("알람 on/off",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold,
                                ),)
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Row(
                        children: [
                          Image.asset("imageFile/rcircle.png", width: 20,height: 20,),
                          Container(
                              margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text("글자 스타일",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold,
                                ),)
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Row(
                        children: [
                          Image.asset("imageFile/rcircle.png", width: 20,height: 20,),
                          Container(
                              margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text("앱 평가하기",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold,
                                ),)
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Row(
                        children: [
                          Image.asset("imageFile/rcircle.png", width: 20,height: 20,),
                          Container(
                              margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text("의견 남기기",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold,
                                ),)
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Row(
                        children: [
                          Image.asset("imageFile/rcircle.png", width: 15,height: 15,),
                          Container(
                              margin:EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text("Six Setting",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: '나눔손글씨',
                                  fontWeight: FontWeight.bold,
                                ),)
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
            */

            /*Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
              width: double.infinity,
              height: 80,
              color: Color(0xffFCF5B6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>fourScreen()));},
                    child:Image.asset("imageFile/calendar.PNG"),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>sevenScreen()));},
                    child:Image.asset("imageFile/monglogo.PNG"),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>sixScreen()));
                  }, child:Image.asset("imageFile/tong.PNG"),
                  ),
                ],
              ),
            )*/


          ],
        )
    );
  }
}
