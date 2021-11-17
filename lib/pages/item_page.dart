import 'package:belanja/models/nama_item.dart';
import 'package:flutter/material.dart';
import 'package:belanja/main.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Item Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Text('Nama Barang')),
                  Expanded(
                    child: Text('Harga'),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text(itemArgs.name)),
                  Expanded(
                    child: Text(
                      itemArgs.price.toString(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
