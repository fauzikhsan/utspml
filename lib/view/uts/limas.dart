// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class LimasPage extends StatefulWidget {
  const LimasPage({super.key});

  @override
  _LimasPageState createState() => _LimasPageState();
}

class _LimasPageState extends State<LimasPage> {
  final sisiAlasController = TextEditingController();
  final tinggiLimasController = TextEditingController();
  double? luas;
  double? keliling;

  void hitung() {
    double sisiAlas = double.parse(sisiAlasController.text);
    double tinggiLimas = double.parse(tinggiLimasController.text);

    setState(() {
      luas = sisiAlas * sisiAlas + 2 * sisiAlas * tinggiLimas;
      keliling = 4 * sisiAlas + 4 * tinggiLimas;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hitung Luas dan Keliling Limas Segiempat'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: sisiAlasController,
              decoration: const InputDecoration(labelText: 'Sisi Alas'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: tinggiLimasController,
              decoration: const InputDecoration(labelText: 'Tinggi Limas'),
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
                  Text('Luas Limas Segiempat: $luas'),
                  Text('Keliling Limas Segiempat: $keliling'),
                ],
              ),
            Image.network(
              'https://awsimages.detik.net.id/community/media/visual/2021/09/21/limas-segi-empat.jpeg?w=600&q=90',scale: 3,
            ),
          ],
        ),
      ),
    );
  }
}
