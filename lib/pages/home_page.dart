import 'package:belanja/models/nama_item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [Item('Sugar', 5000), Item('Salt', 2000)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: item);
                },
                child: Ink(
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(child: Text(item.name)),
                          Expanded(
                            child: Text(
                              item.price.toString(),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
