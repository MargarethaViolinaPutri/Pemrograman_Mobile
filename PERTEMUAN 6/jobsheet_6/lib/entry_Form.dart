// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'item.dart';

class EntryForm extends StatefulWidget {
  final Item? item;
  final bool isAdding;

  EntryForm({required this.item, required this.isAdding});

  @override
  EntryFormState createState() => EntryFormState(this.item, this.isAdding);
}

//class controller
class EntryFormState extends State<EntryForm> {
  Item? item;
  bool isAdding;

  EntryFormState(this.item, this.isAdding);
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (!isAdding && item != null) {
      nameController.text = item!.name;
      priceController.text = item!.price.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    //kondisi
    return Scaffold(
        appBar: AppBar(
          title: Text(isAdding ? 'Tambah Barang' : 'Ubah Barang'),
          backgroundColor: Color.fromARGB(255, 47, 178, 187),
          leading: Icon(Icons.keyboard_arrow_left),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[
              // nama
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: TextField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Nama Barang',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              // harga
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: TextField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Harga Barang',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              // tombol button
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Row(
                  children: <Widget>[
                    // tombol simpan
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            // primary: Theme.of(context).primaryColorDark,
                            // onPrimary: Theme.of(context).primaryColorLight,
                            backgroundColor: Color.fromARGB(255, 47, 178, 187)),
                        child: Text(
                          'Save',
                          textScaleFactor: 1.5,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                        onPressed: () {
                          if (isAdding) {
                            // tambah data
                            item = Item(nameController.text,
                                int.parse(priceController.text));
                          } else {
                            // ubah data
                            item!.name = nameController.text;
                            item!.price = int.parse(priceController.text);
                          }
                          // kembali ke layar sebelumnya dengan membawa objek item
                          Navigator.pop(context, item);
                        },
                      ),
                    ),
                    Container(
                      width: 5.0,
                    ),
                    // tombol batal
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            // primary: Theme.of(context).primaryColorDark,
                            // onPrimary: Theme.of(context).primaryColorLight,
                            // primary: ,
                            backgroundColor: Color.fromARGB(255, 47, 178, 187)),
                        child: Text(
                          'Cancel',
                          textScaleFactor: 1.5,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
