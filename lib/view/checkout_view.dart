// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          title: Container(
            margin: 10.horizontalP,
            child: Text("Checkout",
                style: TextStyle(color: Colors.black, fontSize: 18),),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.black,size:32),
            onPressed: () => Grock.back(),
          )),
    );
  }
}
