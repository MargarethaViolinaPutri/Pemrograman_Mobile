class Item {
  int? _id;
  String _name = "";
  int _price = 0;

  int? get id => _id;

  String get name => _name;
  set name(String value) => _name = value;

  int get price => _price;
  set price(int value) => _price = value;

  //konstruktor versi 1
  Item(this._name, this._price);

  //konstriktor versi 2 : konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _name = map['name'];
    _price = map['price'];
  }
  //konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'name': _name,
      'price': _price,
    };
    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }
}
