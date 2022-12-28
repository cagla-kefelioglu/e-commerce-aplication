// ignore_for_file: non_constant_identifier_names, unused_import

import 'package:e_ticaret_app/assets.dart';
import 'package:e_ticaret_app/model/category_model.dart';
import 'package:e_ticaret_app/model/ct_product.dart';
import 'package:flutter/material.dart';
class CategoryRiverpod extends ChangeNotifier {
  List<String> campaigns = [
    Assets.images.img3,
    Assets.images.img3,
    Assets.images.img3,
  ];

  int campaignsCurrentIndex = 0;//resim her geçtiğinde indexi elde etmemizi sağlayacak

  PageController pageController = PageController(initialPage: 0);

  void setCampaignsIndex(int newPageValue) {
    campaignsCurrentIndex = newPageValue;
    notifyListeners();
  }

  CategoryProductsModel ct_produsts = CategoryProductsModel(ct_products: [
    ct_product(image: Assets.images.kt3png, title: 'iPhones'),
    ct_product(image: Assets.images.kt6png, title: 'watches'),
    ct_product(image: Assets.images.kt7png, title: 'iMacs'),
    ct_product(image: Assets.images.kt1png, title: 'airpods'),
    ct_product(image: Assets.images.kt2png, title: 'iMacs'),
    ct_product(image: Assets.images.kt5png, title: 'macbooks'),
    ct_product(image: Assets.images.kt4png, title: 'homepods'),
   
  ]);

}


