import 'package:flutter/material.dart';
import '../Dashboard/Drawer.dart';
import 'package:dropdown_search/dropdown_search.dart';

class laporan extends StatelessWidget {
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
                  'Laporan',
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
                      // alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 45, left: 25),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Judul Laporan',
                              style: TextStyle(fontSize: 18),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 18),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Ketikkan Judul Laporan"),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Text(
                              "Deskripsi Laporan",
                              style: TextStyle(fontSize: 18),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 18),
                              child: TextField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 8,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 100)),
                                    hintText: "Ketikkan Deskripsi Laporan"),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Pelapor",
                              style: TextStyle(fontSize: 18),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 18),
                              child: Container(
                                decoration: BoxDecoration(
                                    // border: OutlineInputBorder(
                                    //   borderSide: BorderSide(width: 100)
                                    // ),
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10)),
                                child: DropdownSearch<String>(
                                  popupProps: PopupProps.menu(
                                    showSelectedItems: true,
                                    // disabledItemFn: (String s) =>
                                    //     s.startsWith('I'),
                                  ),
                                  items: [
                                    "Mahasiswa",
                                    "Dosen",
                                    "Anonymus",
                                    "STAFF"
                                  ],
                                  dropdownDecoratorProps:
                                      DropDownDecoratorProps(
                                    dropdownSearchDecoration: InputDecoration(
                                      hintText: "Mahasiswa",
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
