import 'package:flutter/material.dart';
import 'kontak_telepon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KontakTelepon(),
      title: 'Belajar CRUD Flutter',
    );
  }
}