import 'package:flutter/material.dart';
import 'package:picpay/pages/picpay.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Picpay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PicPayPage(),
    );
  }
}
