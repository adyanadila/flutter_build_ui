import 'package:flutter/material.dart';
import 'package:latihan1/ui/beranda.dart';
import 'package:latihan1/ui/login.dart';
import 'package:latihan1/ui/poli_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Klinik APP',
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}