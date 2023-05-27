import 'package:flutter/material.dart';
import 'fourScreen.dart';

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
                onPressed: () {},
              ),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                setState(() {
                  photoName = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'name',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                setState(() {
                  birthday = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'birthday',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>fourScreen()));
              },
              child: Text('Okay'),
            ),
          ],
        ),
      ),
    );
  }
}