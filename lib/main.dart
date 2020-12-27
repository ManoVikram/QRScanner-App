import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/homeScreen.dart';

import './screens/homeScreen.dart';
import './screens/scannerScreen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QR Scanner",
      debugShowCheckedModeBanner: false,
      home: QRScanner(),
      routes: {
        ScannerScreen.routeName: (contxt) => ScannerScreen(),
      },
    );
  }
}

class QRScanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}

void main() => runApp(MyApp());
