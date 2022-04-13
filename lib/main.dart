import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'http/webclient.dart';

void main() {
  runApp(const BytebankApp());
  findAll();
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        appBarTheme: AppBarTheme(color: Colors.green[900]),
      ),
      home: Dashboard(),
    );
  }
}
