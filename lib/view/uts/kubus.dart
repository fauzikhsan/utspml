// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class KubusPage extends StatefulWidget {
  const KubusPage({super.key});

  @override
  _KubusPageState createState() => _KubusPageState();
}

class _KubusPageState extends State<KubusPage> {
  final sisiController = TextEditingController();
  double? luas;
  double? keliling;

  void hitung() {
    double sisi = double.parse(sisiController.text);
    setState(() {
      luas = 6 * sisi * sisi;
      keliling = 12 * sisi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hitung Luas dan Keliling Kubus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: sisiController,
              decoration: const InputDecoration(labelText: 'Panjang Sisi'),
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
                  Text('Luas Kubus: $luas'),
                  Text('Keliling Kubus: $keliling'),
                ],
              ),
            Image.network(
              'https://i.pinimg.com/474x/4d/81/24/4d81248e361c05308ba3ffe73a105692.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
