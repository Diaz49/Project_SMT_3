import 'package:flutter/material.dart';
import 'package:project_smt_3/Login/login.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Login();
          }));
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/screen.jpg'),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/icons/logo_polije.png')),
                SizedBox(height: 20),
                Text(
                  'Layanan Aspirasi dan Pengaduan',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  'Online',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'Politeknik Negeri Jember',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
