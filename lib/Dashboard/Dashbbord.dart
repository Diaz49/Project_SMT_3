import 'package:flutter/material.dart';
import 'package:project_smt_3/Dashboard/CustomBottons.dart';
import 'package:project_smt_3/Lapor/Laporan.dart';
import 'Drawer.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  //padding contants
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
// fungsinya sebagai ketentuan keyboard terbuka atau tidak
    double viewInput = MediaQuery.of(context).viewInsets.top;
    double defultDashbordSize = size.height - (size.height * 0.1);
    //custom background dasboard
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Background.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        //custom app bar right darwer
        backgroundColor: Colors.transparent,
        drawer: DrawerScreen(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'POLIJE',
          ),
          actions: [
            Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.format_list_bulleted_rounded));
            })
          ],
        ),
        body: Container(
          // color: Colors.amber,
          padding: EdgeInsets.only(top: 45),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Layanan',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontStyle: FontStyle.normal),
                ),
                const SizedBox(height: 95.0),
                Align(
                  child: Container(
                      width: double.infinity,
                      height: size.height * 0.74,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.white),
                      alignment: Alignment.topCenter,
                      // padding: EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BottonLaporan(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return laporan();
                              }));
                            },
                          ),
                          const SizedBox(height: 50),
                          BottonAspirasi(onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Hello ayang')));
                          }),
                          const SizedBox(height: 50),
                          BottonInformasi(onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Hello hello')));
                          })
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// Scaffold(
//         drawer: DrawerScreen(),
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: const Text(
//             'POLIJE',
//           ),
//           actions: [
//             Builder(builder: (context) {
//               return IconButton(
//                   onPressed: () {
//                     Scaffold.of(context).openDrawer();
//                   },
//                   icon: const Icon(Icons.format_list_bulleted_rounded));
//             })
//           ],
//         ),
//       );

// untuk membuat layer bawah
// Expanded(
//                     child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                   ),
//                   itemBuilder: (context, index) {
//                     return Container(
//                       color: Colors.white,
//                     );
//                   },
//                 ))