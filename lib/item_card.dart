import 'package:flutter/material.dart';
import 'amount.dart';

class ItemCard extends StatelessWidget {
  final Amount item;
  final void Function() delete;

  ItemCard({required this.item, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            item.itemname,
            style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
          ),
          SizedBox(height: 6.0),
          Text(
            item.amount,
            style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
          ),
          SizedBox(height: 8.0),
          TextButton.icon(
            onPressed: delete,
            label: Text('Alindi'),
            icon: Icon(Icons.check),
          )
        ],
      ),
    );
  }
}
