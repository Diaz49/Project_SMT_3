import 'package:flutter/material.dart';
import 'package:project_smt_3/Dashboard/Dashbbord.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage('assets/images/screen.jpg'), fit: BoxFit.cover),
        // ),
        // child: BackButton(
        //   onPressed: () {
        //     Navigator.push(context, MaterialPageRoute(builder: (context) {
        //       return Dashboard();
        //     }));
        //   },
        // ),
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.grey),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/screen.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Dashboard();
              }),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          color: Color.fromARGB(255, 8, 87, 124),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/logo_polije.png',
                width: 48,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Layanan Aspirasi dan Pengaduan Online',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Politeknik Negeri Jember',
                      style: TextStyle(
                          color: Colors.white, fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
