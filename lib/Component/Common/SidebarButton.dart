
import 'package:flutter/material.dart';

class LeftSidebarButton extends StatelessWidget {
  final String profile;
  final String CompanyName;
  final String Username;
  final IconData prefixIcon;
  final List<Widget> additionalTiles;
  LeftSidebarButton({
    required this.prefixIcon,
    required this.profile,
    required this.CompanyName,
    required this.Username,
    required this.additionalTiles
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(CompanyName),
              accountEmail: Text(Username),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(profile), // Anda perlu memasukkan gambar profile yang sesuai di sini
              ),
            ),
            ...additionalTiles,
            Divider(),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Kunci Layar"),
              onTap: () {
                // Tambahkan logika yang sesuai untuk aksi yang ingin Anda lakukan ketika ListTile diklik.
              },
            ),
            ListTile(
              leading: Icon(Icons.accessibility_new),
              title: Text("Tutup Kasir"),
              onTap: () {
                // Tambahkan logika yang sesuai untuk aksi yang ingin Anda lakukan ketika ListTile diklik.
              },
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  leading: Icon(Icons.accessibility_new),
                  title: Text("Logout Kasir"),
                  onTap: () {
                    // Tambahkan logika yang sesuai untuk aksi yang ingin Anda lakukan ketika ListTile diklik.
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
