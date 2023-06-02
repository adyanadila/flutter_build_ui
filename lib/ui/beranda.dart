import 'package:flutter/material.dart';
import 'package:latihan1/widget/sidebar.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(title: Text("Beranda")),
      body: const Center(
        child: Text("Selamat Datang"),
      ),
    );
  }
}