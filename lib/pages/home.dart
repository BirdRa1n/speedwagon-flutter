import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'catalogo.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, World!',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        margin: new EdgeInsets.symmetric(vertical: 200.0, horizontal: 26),
        width: 400.0,
        height: 400.0,
        alignment: Alignment.topLeft,
        decoration: new BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/home.png'), fit: BoxFit.fill),
        ),
      ),
      bottomNavigationBar: (ButtonBar(
        children: [
          ButtonTheme(
            minWidth: 900.0,
            height: 80.0,
            buttonColor: HexColor("#44eabb"),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              child: Text("Catálogo"),
            ),
          ),
        ],
      )),
    );
  }
}
