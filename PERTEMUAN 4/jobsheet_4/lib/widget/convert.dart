import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  final Function konvertHandler;

  Convert({Key? key, required this.konvertHandler});

  @override
  Widget build(BuildContext context) {
    var container = Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => {
          konvertHandler(),
          Colors.blueAccent,
        },
        // color: Colors.blueAccent,
        // textColor: Colors.white,
        child: new Text(
          "Konversi Suhu",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
    return container;
  }
}
