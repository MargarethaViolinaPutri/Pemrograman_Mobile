import 'package:flutter/material.dart';
import 'package:jobsheet5_belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil nilai yang dikirimkan dari halaman sebelumnya
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Produk'),
        backgroundColor: Color.fromARGB(255, 47, 178, 187),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        color: Color.fromARGB(64, 24, 202, 230),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image(image: itemArgs.image),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 5),
                      child: Text(
                          textAlign: TextAlign.center,
                          '${itemArgs.name}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 5),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Rp ${itemArgs.price}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 5),
                      child: Text(
                        textAlign: TextAlign.justify,
                        '${itemArgs.deskripsi}',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
