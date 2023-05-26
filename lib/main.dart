import 'package:flutter/material.dart';
import 'oneScreen.dart';
import 'twoScreen.dart';
import 'threeScreen.dart';
import 'fourScreen.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    // Firebase 앱 초기화 중복 오류 무시
    print('Firebase App already initialized');
  }
  // runApp(myApp());
  initializeDateFormatting().then((_) => runApp(myApp()));
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
