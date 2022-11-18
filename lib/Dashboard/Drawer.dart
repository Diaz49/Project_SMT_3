import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Diaz'),
            accountEmail: Text('Diaz@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://image.shutterstock.com/shutterstock/photos/1436193641/display_1500/stock-vector-japanese-samurai-soldier-on-illustration-1436193641.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Color.fromRGBO(15, 76, 117, 1)),
          ),
          ListTile(
            leading: Icon(Icons.bookmarks),
            title: Text('Layanan'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.post_add_rounded),
            title: Text('Laporan'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Pengaturan'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Tentang'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.output),
            title: Text('Keluar'),
            onTap: () => null,
          )
        ],
      ),
    );
  }
}
