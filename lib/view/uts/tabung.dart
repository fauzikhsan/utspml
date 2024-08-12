// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class TabungPage extends StatefulWidget {
  const TabungPage({super.key});

  @override
  _TabungPageState createState() => _TabungPageState();
}

class _TabungPageState extends State<TabungPage> {
  final jariJariController = TextEditingController();
  final tinggiController = TextEditingController();
  double? luas;
  double? keliling;

  void hitung() {
    double jariJari = double.parse(jariJariController.text);
    double tinggi = double.parse(tinggiController.text);

    setState(() {
      luas = 2 * 3.14 * jariJari * (jariJari + tinggi);
      keliling = 2 * 3.14 * jariJari;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hitung Luas dan Keliling Tabung'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: jariJariController,
              decoration: const InputDecoration(labelText: 'Jari-jari'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: tinggiController,
              decoration: const InputDecoration(labelText: 'Tinggi Tabung'),
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
                  Text('Luas Tabung: $luas'),
                  Text('Keliling Tabung: $keliling'),
                ],
              ),
            Image.network(
                'https://cdn.idntimes.com/content-images/duniaku/post/20221221/untitled-1-e39047191fc1ab37139b5f0e86f0aba2.jpg'),
          ],
        ),
      ),
    );
  }
}
