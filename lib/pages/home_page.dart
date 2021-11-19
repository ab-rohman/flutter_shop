import 'package:belanja/models/nama_item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [Item('Sugar', 5000, 5), Item('Salt', 2000, 2)];

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
                          Expanded(
                              child: Text(
                            item.name,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w100,
                                color: Colors.cyan),
                          )),
                          Expanded(
                            child: Text(
                              item.price.toString(),
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.blueAccent),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              item.stock.toString(),
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.lightBlue),
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
