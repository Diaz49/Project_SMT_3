import 'package:flutter/material.dart';
import 'package:project_smt_3/Login/Register.dart';
import '../Dashboard/Dashbbord.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String email, Password;

  Widget _Textemail() {
    return Padding(
      padding: EdgeInsets.only(right: 160, top: 50),
      child: Text('Masukkan Email', style: TextStyle(fontSize: 15)),
    );
  }

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20, top: 10),
      child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              border: OutlineInputBorder(),
              hintText: 'Silahkan masukkan email anda',
              hintStyle: TextStyle(fontSize: 14)),
          onChanged: ((value) {
            setState(() {
              email = value;
            });
          })),
    );
  }

  Widget _TextPassword() {
    return Padding(
      padding: EdgeInsets.only(right: 130, top: 20),
      child: Text('Masukkan Password', style: TextStyle(fontSize: 15)),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20, top: 10),
      child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              border: OutlineInputBorder(),
              hintText: 'Silahkan masukkan password anda',
              hintStyle: TextStyle(fontSize: 14)),
          onChanged: ((value) {
            setState(() {
              Password = value;
            });
          })),
    );
  }

  Widget _buildButtonlogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 0.9 * (MediaQuery.of(context).size.height / 20),
          width: 3.5 * (MediaQuery.of(context).size.width / 10),

          // margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            //  RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(30.0),
            // ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Dashboard();
                }),
              );
            },
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.0,
                fontSize: MediaQuery.of(context).size.height / 60,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 0))
          ]),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.output_outlined),
                      Text(
                        'Masuk',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 45),
                      )
                    ],
                  ),
                  _Textemail(),
                  _buildEmailRow(),
                  _TextPassword(),
                  _buildPasswordRow(),
                  SizedBox(height: 50),
                  _buildButtonlogin()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Register();
              }));
            },
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Dont have an account? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height / 50,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: MediaQuery.of(context).size.height / 50,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/screen_login.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(70),
                      bottomRight: const Radius.circular(70))),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildContainer(), _buildSignUpBtn()],
          )
        ],
      ),
    ));
  }
}
