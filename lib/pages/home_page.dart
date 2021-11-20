import 'package:belanja/models/nama_item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/cupertino.dart';
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
                          shopButton(),
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

class imageAsset extends StatelessWidget {
  const imageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage gambarTas = AssetImage('images/tas.png');
    Image image = Image(image: gambarTas);
    return Container(
      child: image,
    );
  }
}

class shopButton extends StatelessWidget {
  const shopButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.0,
      height: 10.0,
      child: RaisedButton(
          color: Colors.blueAccent,
          child: Icon(Icons.shop),
          elevation: 6.0,
          onPressed: () {
            buyAlert(context);
            //you can write it like this
            //onPressed: () => buyAlert(context);
          }),
    );
  }

  void buyAlert(BuildContext context) {
    var buyDialog = AlertDialog(
      title: Text("Buy ALert Dialog"),
      content: Text("Happy Shopping"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return buyDialog;
          //you can write it like this
          //builder: (BuildContext context) => return buyDialog;
        });
  }
}

void showSnackBar(BuildContext context) {
  var buySnackBar = SnackBar(content: Text("Are you sure want to buy it"));

  Scaffold.of(context).showSnackBar(buySnackBar);
}
