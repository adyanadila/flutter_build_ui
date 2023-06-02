import 'package:flutter/material.dart';
import 'package:latihan1/model/poli.dart';
import 'package:latihan1/ui/poli_detail.dart';
import 'package:latihan1/ui/poli_form.dart';
import 'package:latihan1/widget/sidebar.dart';
import 'poli_item.dart';


class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => PoliPageState();
}

class PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Poli"),
      actions: [
        GestureDetector(
          child: const Icon(Icons.add),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder:(context) => PoliForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
        ],
      ),
    );
  }
}