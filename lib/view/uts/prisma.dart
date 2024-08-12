// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class PrismaPage extends StatefulWidget {
  const PrismaPage({super.key});

  @override
  _PrismaPageState createState() => _PrismaPageState();
}

class _PrismaPageState extends State<PrismaPage> {
  final alasController = TextEditingController();
  final tinggiAlasController = TextEditingController();
  final tinggiPrismaController = TextEditingController();
  double? luas;
  double? keliling;

  void hitung() {
    double alas = double.parse(alasController.text);
    double tinggiAlas = double.parse(tinggiAlasController.text);
    double tinggiPrisma = double.parse(tinggiPrismaController.text);

    setState(() {
      luas = 2 * (0.5 * alas * tinggiAlas) + (3 * alas * tinggiPrisma);
      keliling = 3 * alas + 3 * tinggiPrisma;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hitung Luas dan Keliling Prisma Segitiga'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: alasController,
              decoration: const InputDecoration(labelText: 'Alas Segitiga'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: tinggiAlasController,
              decoration: const InputDecoration(labelText: 'Tinggi Segitiga'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: tinggiPrismaController,
              decoration: const InputDecoration(labelText: 'Tinggi Prisma'),
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
                  Text('Luas Prisma Segitiga: $luas'),
                  Text('Keliling Prisma Segitiga: $keliling'),
                ],
              ),
            Image.network(
                'https://awsimages.detik.net.id/community/media/visual/2023/07/14/bangun-ruang_169.jpeg?w=600&q=90'),
          ],
        ),
      ),
    );
  }
}
