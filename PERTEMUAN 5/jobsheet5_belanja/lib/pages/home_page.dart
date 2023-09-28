import 'package:flutter/material.dart';
import 'package:jobsheet5_belanja/models/item.dart';
import 'package:jobsheet5_belanja/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      image: AssetImage('assets/img/kastengel.jpg'),
      name: 'Kastengel Keju',
      price: 80000,
      deskripsi:
          'Keju Premium yang memberikan sensasi meleleh di mulut setiap kali anda menggigitnya. Dibuat dengan resep rahasia dan memiliki tekstur yang begitu renyah dan lembut pada saat yang bersamaan. ',
    ),
    Item(
      image: AssetImage('assets/img/nastar.jpg'),
      name: 'Nastar Nanas',
      price: 80000,
      deskripsi:
          'Kami membawa Anda ke dalam perjalanan ke pulau tropis dengan aroma dan rasa nanas yang khas. Setiap gigitan adalah perjalanan rasa yang tak terlupakan.',
    ),
    Item(
      image: AssetImage('assets/img/putri_salju.jpg'),
      name: 'Putri Salju',
      price: 60000,
      deskripsi:
          'Kue Putri Salju kami menggabungkan rasa vanila yang manis dengan sedikit sentuhan gurih, menciptakan harmoni yang sempurna di lidah Anda.',
    ),
    Item(
      image: AssetImage('assets/img/mawar.jpg'),
      name: 'Kue Mawar',
      price: 60000,
      deskripsi:
          'Kue Mawar simbol kebahagiaan yang sempurna untuk setiap kesempatan. Cocok untuk ulang tahun, perayaan, atau sekadar menjadikan hari anda lebih istimewa.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Retha Cookies Catalog"),
        backgroundColor: Color.fromARGB(255, 47, 178, 187),
      ),
      body: Container(
        color: Color.fromARGB(64, 24, 202, 230),
        // margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: item, //mengirim objek item ke item_page.dart
                );
              },
              child: CardWidget(
                  item: item), //widget CardWidget untuk menampilkan item
            );
          },
        ),
      ),
    );
  }
}
