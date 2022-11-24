import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  Widget _buildEmail() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(14),
              border: OutlineInputBorder(),
              hintText: 'Silahkan mengisi email',
              hintStyle: TextStyle(fontSize: 14)),
        ),
      );

  Widget _buildPassword() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(14),
              border: OutlineInputBorder(),
              hintText: 'Silahkan mengisi password',
              hintStyle: TextStyle(fontSize: 14)),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(15, 76, 117, 1),
        child: Center(
          child: Container(
              color: Colors.white,
              height: 750,
              width: 350,
              child: Center(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.exit_to_app),
                        SizedBox(width: 10),
                        Text(
                          "Register",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 200),
                    child: Text(
                      'Masukkan Email',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  _buildEmail(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 160),
                    child: Text(
                      'Masukkan Password',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  _buildPassword(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 160),
                    child: Text(
                      'Konfirmasi Password',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  _buildPassword(),
                ],
              ))),
        ),
      ),
    );
  }
}
