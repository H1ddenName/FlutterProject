import 'package:flutter/material.dart';
import 'package:tugas/pagetiga.dart';

class PagePertama extends StatefulWidget {
  const PagePertama({super.key});

  @override
  State<PagePertama> createState() => _MyAppState();
}

class _MyAppState extends State<PagePertama> {
  TextEditingController klpk = TextEditingController();
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Asset/bghome.jpg'), fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Kelompok Mobile Programing",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 50),
            Container(
              width: 400,
              child: TextField(
                  controller: name,
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Nama Anggota',
                    prefixIcon: Icon(Icons.person),
                    isDense: true,
                    contentPadding: EdgeInsets.all(15),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 400,
              child: TextField(
                  controller: klpk,
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Kelompok',
                    prefixIcon: const Icon(Icons.group),
                    isDense: true,
                    contentPadding: EdgeInsets.all(15),
                  )),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: ElevatedButton(
                    child: Text('Login'),
                    onPressed: () {
                      var nmkel = name.text;
                      var kel = klpk.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) {
                          var pagetiga = PageTiga(
                              nm: nmkel.toString(), klm: kel.toString());
                          return pagetiga;
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
