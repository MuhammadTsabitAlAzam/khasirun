import 'package:flutter/material.dart';
import 'package:kasir/Component/Common/SidebarButton.dart';

class LeftSidebar extends StatelessWidget {
  const LeftSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myAdditionalTiles = [
      ListTile(
        leading: Icon(Icons.computer),
        title: Text('Manager'),
        onTap: () {
          // Tambahkan logika yang sesuai untuk aksi Home.
        },
      ),
      ListTile(
        leading: Icon(Icons.accessibility_new),
        title: Text('Kasir'),
        onTap: () {
          // Tambahkan logika yang sesuai untuk aksi Settings.
        },
      ),
      ListTile(
        leading: Icon(Icons.accessibility_new),
        title: Text('Penjualan'),
        onTap: () {
          // Tambahkan logika yang sesuai untuk aksi Settings.
        },
      ),
      ListTile(
        leading: Icon(Icons.accessibility_new),
        title: Text('Laporan'),
        onTap: () {
          // Tambahkan logika yang sesuai untuk aksi Settings.
        },
      ),
      ListTile(
        leading: Icon(Icons.accessibility_new),
        title: Text('Absensi'),
        onTap: () {
          // Tambahkan logika yang sesuai untuk aksi Settings.
        },
      ),
      ListTile(
        leading: Icon(Icons.accessibility_new),
        title: Text('Pengaturan'),
        onTap: () {
          // Tambahkan logika yang sesuai untuk aksi Settings.
        },
      ),
    ];
    return LeftSidebarButton(
      prefixIcon: Icons.account_circle,
      profile: 'assets/Dummy/Dummy.jpeg', // Gantilah dengan path gambar profil yang sesuai.
      CompanyName: 'Nama Perusahaan',
      Username: 'Username Anda',
      additionalTiles: myAdditionalTiles,
    );
  }
}
