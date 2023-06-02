
import 'package:flutter/material.dart';
import 'package:latihan1/ui/beranda.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  _LoginState createState() => _LoginState();
}
  
class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle,
            size: 80,),
            Text("Login Admin",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            SizedBox(height: 50),
            Center(
              child: Form(
                key: _formKey,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Column(
                    children: [
                      _usernameTextField(_usernameCtrl),
                      SizedBox(height: 20),
                      _passwordTextField(_passwordCtrl),
                      SizedBox(height: 40),
                      _tombolLogin(TextEditingController, context),
                    ],
                  ),
                )),
            )
          ],
        ),
          )
        ),
      ),
    );
  }
}

Widget _usernameTextField(TextEditingController _usernameCtrl) {
  return TextFormField(
    decoration: InputDecoration(labelText: "Username"),
    obscureText: true,
    controller: _usernameCtrl,
  );
}

Widget _passwordTextField(TextEditingController _passwordCtrl) {
  return TextFormField(
    decoration: InputDecoration(labelText: "Password"),
    obscureText: true,
    controller: _passwordCtrl,
  );
}

Widget _tombolLogin( TextEditingController, context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: ElevatedButton(child: Text("Login"), onPressed: () {
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => Beranda()));
    }));
}

