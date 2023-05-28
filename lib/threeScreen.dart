import 'package:flutter/material.dart';
import 'fourScreen.dart';
import 'package:image_picker/image_picker.dart';

class threeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primarySwatch: buildMaterialColor(Color(0xffFCF5B6)),
        scaffoldBackgroundColor: Color(0xffFAF9E9),
      ),
      home: PhotoInfoScreen(),
    );
  }
}
MaterialColor buildMaterialCytolor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

class PhotoInfoScreen extends StatefulWidget {
  @override
  _PhotoInfoScreenState createState() => _PhotoInfoScreenState();
}

class _PhotoInfoScreenState extends State<PhotoInfoScreen> {
  String photoName = '';
  String birthday = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200, height: 200,
              decoration: BoxDecoration(
                color: Color(0xffE7E3D1),
                borderRadius: BorderRadius.circular(1000),
              ),
              child: IconButton(
                icon: Icon(Icons.add_a_photo),
                onPressed: () {
                  _showBottomSheet();
                },
              ),
            ),
            SizedBox(height: 60),
            Center(
              child: Container(
                margin: EdgeInsets.only(right: 0),
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFE7E3D1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                        hintText: '텍스트를 입력하세요',
                          contentPadding: EdgeInsets.symmetric(vertical: 10)
                      ),
                    ),
                    SizedBox(height: 20),

                  ],
                ),
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => fourScreen()));
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(150, 60)),
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFCF5B6)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // 텍스트 색상
              ),
              child: Text(
                '몽 저장하기',
                style: TextStyle(
                  fontFamily: '나눔손글씨',
                  fontSize: 25 ,
                  fontWeight: FontWeight.bold// 원하는 폰트 설정
                ),
              ),
            ),

          ],
        ),
      ),
    );
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
              onPressed: () {},
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
              onPressed: () {},
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
}