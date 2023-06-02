import 'package:flutter/material.dart';
import 'package:latihan1/model/poli.dart';
import 'package:latihan1/ui/poli_detail.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({super.key});
  _PoliFormState createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child:  Column(
            children: [
              _fieldNamaPoli(_namaPoliCtrl), SizedBox(height: 20), _tombolSimpan(_namaPoliCtrl, context)
            ],
          ),
        ),
      ),
    );
  }
}

_fieldNamaPoli(TextEditingController _namaPoliCtrl) {
  return TextField(
    decoration: const InputDecoration(labelText: "Nama Poli"),
    controller: _namaPoliCtrl,
  );
}

_tombolSimpan(TextEditingController _namaPoliCtrl, BuildContext context) {
  return ElevatedButton(
    onPressed:() {
      Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
    },
    child: const Text("Simpan"));
}