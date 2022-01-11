import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final List<String> imgList = [
  'https://p2.trrsf.com/image/fget/cf/600/400/images.terra.com/2021/07/07/tesla---model-y.jpg',
  'https://p2.trrsf.com/image/fget/cf/600/400/images.terra.com/2021/07/07/tesla---model-y.jpg',
  'https://p2.trrsf.com/image/fget/cf/600/400/images.terra.com/2021/07/07/tesla---model-y.jpg',
  'https://p2.trrsf.com/image/fget/cf/600/400/images.terra.com/2021/07/07/tesla---model-y.jpg',
  'https://p2.trrsf.com/image/fget/cf/600/400/images.terra.com/2021/07/07/tesla---model-y.jpg',
  'https://p2.trrsf.com/image/fget/cf/600/400/images.terra.com/2021/07/07/tesla---model-y.jpg'
];

void main() => runApp(CarouselDemo());

final themeMode = ValueNotifier(1);

class CarouselDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, g) {
        return MaterialApp(
          initialRoute: '/',
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.values.toList()[value as int],
          debugShowCheckedModeBanner: false,
          home: ComplicatedImageDemo(),
        );
      },
      valueListenable: themeMode,
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Center(
          child: Container(
            margin: new EdgeInsets.symmetric(vertical: 12.0, horizontal: 15),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class ComplicatedImageDemo extends StatelessWidget {
  get margin => null;

  get spacing => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(icon: Icon(Icons.nightlight_round), onPressed: () {})
        ],
        title: new Center(
            child: new Text(
          "Tesla Model Y",
          textAlign: TextAlign.center,
          style: TextStyle(color: HexColor("#111111")),
        )),
        backgroundColor: HexColor("#ffffff"),
      ),
      body: Container(
          margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
          child: ListView(
            padding: const EdgeInsets.all(1),
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imageSliders,
              ),
              Container(
                width: 900.0,
                height: 200.0,
                color: HexColor('#DCEAE7'),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Ano',
                        style: TextStyle(color: HexColor("#080E2C")),
                      ),
                    ),
                    Container(
                      child: Text(
                        'XXX',
                        style: TextStyle(color: HexColor("#111e5e")),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Combustível',
                        style: TextStyle(color: HexColor("#080E2C")),
                      ),
                    ),
                    Container(
                      child: Text(
                        'XXX',
                        style: TextStyle(color: HexColor("#111e5e")),
                      ),
                    ),
                    Container(
                      child: Text(
                        'IPVA pago',
                        style: TextStyle(color: HexColor("#080E2C")),
                      ),
                    ),
                    Container(
                      child: Text(
                        'XXX',
                        style: TextStyle(color: HexColor("#111e5e")),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Km rodados',
                        style: TextStyle(color: HexColor("#080E2C")),
                      ),
                    ),
                    Container(
                      child: Text(
                        'XXX',
                        style: TextStyle(color: HexColor("#111e5e")),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Complementar',
                        style: TextStyle(color: HexColor("#080E2C")),
                      ),
                    ),
                    Container(
                      child: Text(
                        'XXX',
                        style: TextStyle(color: HexColor("#111e5e")),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
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
                  MaterialPageRoute(builder: (context) => CarouselDemo()),
                );
              },
              child: Text("Entre em contato"),
            ),
          ),
        ],
      )),
    );
  }
}
