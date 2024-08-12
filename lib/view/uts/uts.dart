import 'package:flutter/material.dart';
import 'package:pmlbiu/view/uts/balok.dart';
import 'package:pmlbiu/view/uts/kubus.dart';
import 'package:pmlbiu/view/uts/limas.dart';
import 'package:pmlbiu/view/uts/prisma.dart';
import 'package:pmlbiu/view/uts/tabung.dart';

class UTS extends StatefulWidget {
  const UTS({super.key});

  @override
  State<UTS> createState() => _UTSState();
}

class _UTSState extends State<UTS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UTS GAN'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Text(
                'Aplikasi Aritmatika Luas Keliling Bangun Ruang by Faujay'),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const KubusPage()));
              },
              child: const Card(
                  color: Color(0xff134074),
                  child: ListTile(
                    title: Text('Kubus', style: TextStyle(color: Colors.white)),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BalokPage()));
              },
              child: const Card(
                  color: Color(0xff134074),
                  child: ListTile(
                    title: Text('Balok', style: TextStyle(color: Colors.white)),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PrismaPage()));
              },
              child: const Card(
                  color: Color(0xff134074),
                  child: ListTile(
                    title:
                        Text('Prisma', style: TextStyle(color: Colors.white)),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LimasPage()));
              },
              child: const Card(
                  color: Color(0xff134074),
                  child: ListTile(
                    title: Text('Limas', style: TextStyle(color: Colors.white)),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TabungPage()));
              },
              child: const Card(
                  color: Color(0xff134074),
                  child: ListTile(
                    title:
                        Text('Tabung', style: TextStyle(color: Colors.white)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
