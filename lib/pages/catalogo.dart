import 'package:flutter/material.dart';
import 'detalhes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFFF3FDFB),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF44EABB),
          iconTheme:
              const IconThemeData(color: Color(0xFF080E2C), opacity: 0.4)),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.33,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        mainAxisSpacing: 16,
        crossAxisSpacing: 8,
        children: const <Widget>[Product(), Product(), Product(), Product(), Product(), Product(), Product(), Product()],
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  CarouselDemo()),
          );
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: const Color(0xFFF3FDFB),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.withOpacity(0.35),
                spreadRadius: 0,
                blurRadius: 18,
                offset: const Offset(2, 4),
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              Image.network(
                  'https://raw.githubusercontent.com/carlos3g/speedwagon-frontend/master/images/product-image.png',
                  fit: BoxFit.fitWidth),
              Row(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left: 8, top: 4),
                      child: Column(children: const <Widget>[
                        Text(
                          'Tesla model Y',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF080E2C)),
                        ),
                        Text(
                          '2 anos de usado',
                          style:
                              TextStyle(fontSize: 10, color: Color(0xFF393E56)),
                        )
                      ])),
                ],
              )
            ],
          ),
        ));
  }
}
