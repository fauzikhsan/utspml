// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class BalokPage extends StatefulWidget {
  const BalokPage({super.key});

  @override
  _BalokPageState createState() => _BalokPageState();
}

class _BalokPageState extends State<BalokPage> {
  final panjangController = TextEditingController();
  final lebarController = TextEditingController();
  final tinggiController = TextEditingController();
  double? luas;
  double? keliling;

  void hitung() {
    double panjang = double.parse(panjangController.text);
    double lebar = double.parse(lebarController.text);
    double tinggi = double.parse(tinggiController.text);

    setState(() {
      luas = 2 * (panjang * lebar + panjang * tinggi + lebar * tinggi);
      keliling = 4 * (panjang + lebar + tinggi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hitung Luas dan Keliling Balok'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: panjangController,
              decoration: const InputDecoration(labelText: 'Panjang'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: lebarController,
              decoration: const InputDecoration(labelText: 'Lebar'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: tinggiController,
              decoration: const InputDecoration(labelText: 'Tinggi'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitung,
              child: const Text('Hitung'),
            ),
            const SizedBox(height: 20),
            if (luas != null && keliling != null)
              Column(
                children: [
                  Text('Luas Balok: $luas'),
                  Text('Keliling Balok: $keliling'),
                ],
              ),
            Image.network(
                'https://awsimages.detik.net.id/community/media/visual/2021/11/02/gambar-balok.jpeg?w=1200'),
          ],
        ),
      ),
    );
  }
}
