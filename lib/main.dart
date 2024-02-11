import 'package:flutter/material.dart';
import 'amount.dart';
import 'item_card.dart';
void main() => runApp(MaterialApp(
  home: ItemList(),
));

class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<Amount> items = [
    Amount(itemname: 'Elma', amount: '1 kg'),
    Amount(itemname: 'Un', amount: '2 kg'),
    Amount(itemname: 'Ekmek', amount: '3 adet'),
    Amount(itemname: 'Salca', amount: '1 kutu'),
    Amount(itemname: 'Muz', amount: '1 kg'),
    Amount(itemname: 'Su', amount: '10 litre'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('Shopping List'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items.map((item) =>
              ItemCard(
                item: item,
                delete: () {
                  setState(() {
                    items.remove(item);
                  });
                }
              )).toList(),
        ),
      ),
    );
  }
}
