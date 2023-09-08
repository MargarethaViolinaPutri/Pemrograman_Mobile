import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              title: Text(
                "App Lapak Kue Ku",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Color.fromARGB(255, 252, 164, 0)),
          body: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 220.0,
                          height: 50.0,
                          color: Color.fromARGB(255, 255, 217, 2),
                          alignment: Alignment.center,
                          child: Text("Daftar Menu",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        // SizedBox(
                        //   width: 2,
                        // ),
                        Container(
                          width: 212.0,
                          height: 50.0,
                          color: Color.fromARGB(255, 255, 217, 2),
                          alignment: Alignment.center,
                          child: Text("Lihat Promo Hari Ini",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                    //GAMBAR, BORDER GAMBAR
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 280,
                          alignment: Alignment.topCenter,
                          child: Image(
                            image: NetworkImage(
                                'https://tribratanews.polri.go.id/web/image/blog.post/50469/image'),
                            fit: BoxFit.fitWidth,
                          ),
                          margin: EdgeInsets.only(top: 5, bottom: 10),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 2, right: 2, top: 4),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 119, 82, 2),
                              width: 3,
                            ),
                          ),
                          height: 325.0,
                          width: 500,
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text("Menu Tradisional Paling Rame",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(230, 27, 27, 27),
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                    // kotak bawah gambar
                    Container(
                      height: 45,
                      width: 438,
                      margin: EdgeInsets.only(left: 2, right: 2),
                      //padding: EdgeInsets.all(15),
                      alignment: Alignment.centerLeft,
                      color: Color.fromARGB(255, 163, 171, 20),
                      //color: Color.fromARGB(0, 55, 0, 255),
                      child: Text("Lihat Banyak Menu Hemat ---->",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                      padding: EdgeInsets.only(left: 14),
                    ),
                    //BERITA 1
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 2, right: 2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(230, 184, 184, 184),
                              width: 2,
                            ),
                          ),
                          height: 145,
                          width: 440,
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(left: 10, bottom: 5),
                          child: Text("Lebih Banyak Makin Hemat",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 2, right: 2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 119, 82, 2),
                              width: 2,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 172,
                                height: 110,
                                alignment: Alignment.centerLeft,
                                child: Image(
                                  image: AssetImage('assets/img/AyamBakar.png'),
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 95,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(left: 12),
                                child: Text(
                                    "Ayam bakar dengan cita rasa Nusantara kaya akan rempah dibalut saus pedas manis cocok dengan lidah kita semua.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // berita 2
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 2, right: 2),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 207, 162, 63),
                                width: 2),
                            //width: 2,
                          ),
                          // ),
                          height: 145,
                          width: 440,
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(left: 10, bottom: 5),
                          child: Text("Lebih Banyak Makin Hemat",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 2, right: 2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 119, 82, 2),
                              width: 2,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 172,
                                height: 110,
                                alignment: Alignment.centerLeft,
                                child: Image(
                                    image:
                                        AssetImage('assets/img/IkanBakar.png')),
                              ),
                              Container(
                                width: 200,
                                height: 95,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(left: 12),
                                child: Text(
                                    "Ikan bakar fresh diolah dengan berbagai macam pilihan seperti pedas manis, rica-rica, bumbu kuning, dll.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Container(
//         child: Container(
//           height: 85,
//           width: 600,
//           color: Colors.greenAccent,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
