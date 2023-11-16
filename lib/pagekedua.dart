import 'package:flutter/material.dart';
import 'package:tugas/pagepertama.dart';

class PageKedua extends StatefulWidget {
  const PageKedua({super.key});

  @override
  State<PageKedua> createState() => _MyPageKedua();
}

class _MyPageKedua extends State<PageKedua> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            color: Colors.white54,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                const ListTile(
                  leading: Icon(Icons.arrow_back),
                  trailing: Icon(Icons.menu),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      maxRadius: 65,
                      backgroundImage: AssetImage("Asset/profile.png"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Kelompok 2",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("@kelompok2")],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Mobile Programming - Kelompok 2",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  child: Expanded(
                      child: ListView(
                    children: [
                      // Card(
                      //   color: Colors.white70,
                      //   margin: const EdgeInsets.only(
                      //       left: 35, right: 35, bottom: 10),
                      //   shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(30)),
                      //   child: const ListTile(
                      //     leading: Icon(
                      //       Icons.privacy_tip_sharp,
                      //       color: Colors.black54,
                      //     ),
                      //     title: Text(
                      //       'Nama Lengkap',
                      //       style: TextStyle(
                      //           fontSize: 18, fontWeight: FontWeight.bold),
                      //     ),
                      //     trailing: Icon(Icons.arrow_forward_ios_outlined),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                    //   Card(
                    //     color: Colors.white70,
                    //     margin: const EdgeInsets.only(
                    //         left: 35, right: 35, bottom: 10),
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(30)),
                    //     child: const ListTile(
                    //       leading: Icon(
                    //         Icons.logout,
                    //         color: Colors.black54,
                    //       ),
                    //       title: Text(
                    //         'Logout',
                    //         style: TextStyle(
                    //             fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //       trailing: Icon(Icons.arrow_forward_ios_outlined),
                    //     ),
                    //   )
                    // ],
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
                              return const PagePertama();
                            }));
                          },
                          child: const Text("Logout"))
                    ],
                  )),
                )
              ],
            ),
          ),
        ));
  }
}
