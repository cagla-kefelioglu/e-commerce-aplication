// ignore_for_file: unused_import, must_be_immutable, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:e_ticaret_app/model/ct_product.dart';
import 'package:e_ticaret_app/view/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

import '../constant/constant.dart';
import '../view/home.dart';

class CategoryCardTwo extends StatelessWidget {
  ct_product ct_productt;
  CategoryCardTwo({required this.ct_productt});

  @override
  Widget build(BuildContext context) {
    return GrockContainer(
      onTap: () => Grock.to(BaseScaffold()),
      width: 100,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: 15.allBR,
        color: Constant.white,
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: 10.allBR),
        child: IntrinsicHeight(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Hero(
                tag: ct_productt,
                child: Image.asset(ct_productt.image, fit: BoxFit.fill , width: 50,)),
            Padding(
              padding: 10.horizontalP,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Text(
                      ct_productt.title,
                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,letterSpacing:0.5),
                    ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
