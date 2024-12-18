import 'package:flutter/material.dart';
import 'package:tp_module_6/calculatrice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculatrice',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('Calculatrice de fournitures',
                  style: TextStyle(fontSize: 24, color: Colors.black))),
        ),
        body: FournitureList(),
      ),
    );
  }
}

class FournitureList extends StatelessWidget {
  const FournitureList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Fourniture> fournitures = [
      Fourniture(name: 'Clavier', price: 50.0),
      Fourniture(name: 'Ecran', price: 200.99),
      Fourniture(name: 'Manette', price: 45.99),
      Fourniture(name: 'Stylo', price: 1.5),
    ];

    return ListView(
      children: fournitures
          .map((fourniture) => Calculatrice(fourniture: fourniture))
          .toList(),
    );
  }
}


