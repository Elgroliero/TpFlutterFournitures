import 'package:flutter/material.dart';

class Fourniture {
  final String name;
  final double price;

  Fourniture({required this.name, required this.price});
}

class Calculatrice extends StatefulWidget {
  final Fourniture fourniture;

  const Calculatrice({Key? key, required this.fourniture}) : super(key: key);

  @override
  _CalculatriceState createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  int quantity = 0;

  double get totalPrice {
    return widget.fourniture.price * quantity;
  }

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.fourniture.name, style: TextStyle(fontSize: 24)),
          Text('${widget.fourniture.price.toStringAsFixed(2)}€'),
          ElevatedButton(
            onPressed: incrementQuantity,
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.purple,
            ),
            child: Icon(Icons.add, color: Colors.white),
          ),
          Text('$quantity', style: TextStyle(fontSize: 24)),
          ElevatedButton(
            onPressed: decrementQuantity,
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: Colors.purple,
            ),
            child: Icon(Icons.remove, color: Colors.white),
          ),
          Text('Total : ${totalPrice.toStringAsFixed(2)}€',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
