import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BugunNeYesem());
}

class BugunNeYesem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Bugün Ne Yesem ?',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'Mercimek Çorbası',
    'Tarhana Çorbası ',
    'Tavuksuyu Çorbası ',
    'Düğün Çorbası',
    'Yoğurt Çorbası',
  ];

  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];

  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void yemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  color: Colors.white,
                  highlightColor: Colors.white,
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/images/corba_$corbaNo.jpg')),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black38,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  color: Colors.white,
                  highlightColor: Colors.white,
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/images/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black38,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  color: Colors.white,
                  highlightColor: Colors.white,
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/images/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black38,
            ),
          ),
          Container(
            height: 15,
          ),
        ],
      ),
    );
  }
}
