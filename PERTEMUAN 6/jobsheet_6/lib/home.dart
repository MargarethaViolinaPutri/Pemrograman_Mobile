// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:jobsheet_6/db_helper.dart';
import 'package:jobsheet_6/entry_Form.dart';
import 'package:jobsheet_6/item.dart';
import 'dart:async';

//pendukung program asinkron
class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Item> itemList = [];

  @override
  Widget build(BuildContext context) {
    if (itemList.isEmpty) {
      updateListView();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Item Retha Cookies'),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        backgroundColor: Color.fromARGB(255, 47, 178, 187),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: createListView(),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                // primary: Theme.of(context).primaryColorDark,
                // onPrimary: Theme.of(context).primaryColorLight,
                backgroundColor: Color.fromARGB(255, 47, 178, 187),
                minimumSize: Size(double.infinity, 50.0),
              ),
              child: Text(
                "Tambah Item Baru",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              onPressed: () async {
                var item = await navigateToEntryForm(context, true, null);
                if (item != null) {
                  int result = await dbHelper.insert(item);
                  if (result > 0) {
                    updateListView();
                  }
                }
              },
            ),
          ),
        ),
      ]),
    );
  }

  Future<Item?> navigateToEntryForm(
      BuildContext context, bool isAdding, Item? item) async {
    var result = await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return EntryForm(item: item, isAdding: isAdding);
    }));
    return result;
  }

  ListView createListView() {
    TextStyle textStyle = Theme.of(context).textTheme.headline5!;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: Card(
            color: Color.fromARGB(64, 3, 249, 225),
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 175, 226, 234),
                child: Icon(Icons.cookie),
              ),
              title: Text(
                this.itemList[index].name,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                this.itemList[index].price.toString(),
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: GestureDetector(
                child: Icon(Icons.delete),
                onTap: () async {
                  //3) Panggil Fungsi untuk Delete dari DB berdasarkan Item
                  int result = await dbHelper.delete(this.itemList[index].id!);
                  if (result > 0) {
                    updateListView();
                  }
                },
              ),
              // 4) Panggil Fungsi untuk Edit data
              onTap: () async {
                var item = await navigateToEntryForm(
                    context, false, this.itemList[index]);
                if (item != null) {
                  int result = await dbHelper.update(item);
                  if (result > 0) {
                    updateListView();
                  }
                }
              },
            ),
          ),
        );
      },
    );
  }

  //update List item
  // void updateListView() {
  //   final Future<Database> dbFuture = dbHelper.initDb();
  //   dbFuture.then((database) {
  //     Future<List<Item>> itemListFuture = dbHelper.getItemList();
  //     itemListFuture.then((itemList) {
  //       setState(() {
  //         this.itemList = itemList; // Update the itemList
  //         this.count = itemList.length; // Update the count
  //       });
  //     });
  //   });
  // }
  void updateListView() async {
    final items = await dbHelper.getItemList();
    setState(() {
      itemList = items;
      count = items.length;
    });
  }
}
