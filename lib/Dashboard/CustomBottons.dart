import 'package:flutter/material.dart';

class BottonLaporan extends StatelessWidget {
  const BottonLaporan({Key? key, required this.onPressed}) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 290,
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15,
                  spreadRadius: 4,
                  offset: Offset(8, 8))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.data_array),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Laporan",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    'Laporan sebuah informasi',
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottonAspirasi extends StatelessWidget {
  const BottonAspirasi({Key? key, required this.onPressed}) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 290,
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15,
                  spreadRadius: 4,
                  offset: Offset(8, 8))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.playlist_add_outlined),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Aspirasi",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    'Kirimkan suara aspirasimu',
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottonInformasi extends StatelessWidget {
  const BottonInformasi({Key? key, required this.onPressed}) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 290,
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15,
                  spreadRadius: 4,
                  offset: Offset(8, 8))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.question_answer_outlined),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Informasi",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    'Dapatkan informasi mengenai kampus',
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
