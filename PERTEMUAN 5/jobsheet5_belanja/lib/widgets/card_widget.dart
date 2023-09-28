import 'package:flutter/material.dart';
import 'package:jobsheet5_belanja/models/item.dart';

class CardWidget extends StatelessWidget {
  final Item item;

  CardWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFEFEFF2),
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // width: double.infinity,
              width: 500,
              height: 300,
              child: Image(
                image: item.image,
                // fit: BoxFit.fitHeight,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 4),
                    child: Text(
                        textAlign: TextAlign.center,
                        '${item.name}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 4),
                    child: Text(
                        textAlign: TextAlign.center,
                        'Rp ${item.price}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 4),
                    child: Text(
                        textAlign: TextAlign.justify,
                        '${item.deskripsi}',
                        style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
