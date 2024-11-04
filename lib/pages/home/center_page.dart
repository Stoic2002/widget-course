import 'package:flutter/material.dart';

class CenterPage extends StatefulWidget {
  const CenterPage({super.key});

  @override
  State<CenterPage> createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'IMPLEMENTASI CENTER DENGAN CONTAINER',
            style: TextStyle(
                fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.red),
          ),
        ),
        body: SafeArea(
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('IDENTITAS PROFIL MAHASISWA'),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                width: 200.0,
                height: 100.0,
                color: const Color.fromARGB(255, 2, 243, 183),
                child: const Center(
                  child: Text(
                    'NPM : 5220411230',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                width: 200.0,
                height: 100.0,
                color: const Color.fromARGB(255, 4, 101, 212),
                child: const Center(
                  child: Text(
                    'Nama : Aria Rizky Prasetyo',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                width: 200.0,
                height: 100.0,
                color: Colors.black,
                child: const Center(
                  child: Text(
                    'Prodi : Informatika Sarjana',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}
