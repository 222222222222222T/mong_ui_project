import 'package:flutter/material.dart';

class twoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Select a Dog',
      home: Scaffold(
        backgroundColor: Color(0xFFF9F9E9), // 배경색상
        body: Stack(
          children: [
            Positioned(
              left: 60, // 왼쪽 여백
              top: 360, // 상단 여백
          child: TextButton(
            onPressed: (){
              Navigator.pushNamed(context, '/fourScreen');
            },

              child:Container(
                width: 110, // 가로 크기
                height: 110, // 세로 크기
                decoration: BoxDecoration(
                  color: Color(0xFFE7E3D1), // 배경색상
                  borderRadius: BorderRadius.circular(50), // 둥근 모서리
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.asset(
                    'imageFile/two_mon.png',
                    fit: BoxFit.cover,
                  ),
                ),
                ),
              ),
            ),
            Positioned(
              left: 240, // 왼쪽 여백
              top: 370, // 상단 여백
              child: Container(
                width: 110, // 가로 크기
                height: 110, // 세로 크기
                decoration: BoxDecoration(
                  color: Color(0xFFE7E3D1), // 배경색상
                  borderRadius: BorderRadius.circular(50), // 둥근 모서리
                ),
              ),
            ),
            Positioned(
              left: 70, // 왼쪽 여백
              top: 630, // 상단 여백
              child: Container(
                width: 110, // 가로 크기
                height: 110, // 세로 크기
                decoration: BoxDecoration(
                  color: Color(0xFFE7E3D1), // 배경색상
                  borderRadius: BorderRadius.circular(50), // 둥근 모서리
                ),

              ),
            ),
            Positioned(
              left: 230, // 왼쪽 여백
              top: 610, // 상단 여백
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/threeScreen');
                },
                child:Container(
                  width: 130, // 가로 크기
                  height: 130, // 세로 크기
                  decoration: BoxDecoration(
                    color: Colors.white, // 배경색상
                    borderRadius: BorderRadius.circular(80), // 둥근 모서리
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.asset(
                      'imageFile/two_add.png', // 이미지 경로를 적절히 수정해주세요.
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 100, // 왼쪽 여백
              top: 140, // 상단 여백
              child: Text(
                '오늘의 몽을 선택하세요',
                style: TextStyle(
                  fontFamily: '나눔손글씨',
                  color: Colors.black, // 글자 색상
                  fontSize: 30, // 글자 크기
                  fontWeight: FontWeight.bold, // 글자 두께
                ),
              ),
            ),
            Positioned(
              left: 95, // 왼쪽 여백
              top: 490, // 상단 여백
              child: Text(
                '몽실이',
                style: TextStyle(
                  fontFamily: '나눔손글씨',
                  color: Colors.black, // 글자 색상
                  fontSize: 30, // 글자 크기
                  fontWeight: FontWeight.bold, // 글자 두께
                ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}









