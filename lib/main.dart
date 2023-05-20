import 'package:flutter/material.dart';
import 'oneScreen.dart';
import 'twoScreen.dart';
import 'threeScreen.dart';
import 'fourScreen.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MaterialApp(
    home: myApp(),)));
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>oneScreen(),
        '/twoScreen':(context)=>twoScreen(),
        '/threeScreen':(context)=>threeScreen(),
        '/fourScreen':(context)=>fourScreen(),
        // '/fiveScreen':(content)=>fiveScreen(),
        // '/sixScreen':(content)=>sixScreen(),
        // '/sevenScreen':(content)=>sevenScreeen()
      },
    );
  }
}
