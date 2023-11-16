import 'package:flutter/material.dart';
import 'package:tugas/pagekedua.dart';
import 'package:tugas/pagepertama.dart';

class PageTiga extends StatelessWidget {
  final nm, klm;
  const PageTiga({super.key, @required this.nm, this.klm});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PagePertama()));
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text("Anggota kelompok"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bghome.jpg'), fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('assets/profile.jpeg'),
              ),
              const SizedBox(height: 30),
              Text(
                "Nama Lengkap ${nm} Anggota Kelompok ${klm}",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.cyan),
                      fixedSize: MaterialStateProperty.all(const Size(350, 40)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)))),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const PageKedua();
                    }));
                  },
                  child: const Text("Lihat Profile"))
            ],
          ),
        ),
      ),
      onWillPop: () async {
        return true;
      },
    );
  }
}
