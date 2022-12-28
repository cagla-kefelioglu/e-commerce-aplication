// ignore_for_file: non_constant_identifier_names

import 'package:e_ticaret_app/model/product.dart';

class HomeProductsModel{
   String category_title;
   List <product> products;

  HomeProductsModel({
    required this.category_title,
    required this.products,
  });
}