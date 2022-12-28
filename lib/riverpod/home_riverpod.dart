// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:e_ticaret_app/model/ct_product.dart';
import 'package:e_ticaret_app/model/home_products_model.dart';
import 'package:e_ticaret_app/model/product.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class HomeRiverpod extends ChangeNotifier {
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

  HomeProductsModel hotDeals=
    HomeProductsModel(category_title: "Hot  Deals",
     products:[
      product(
      image: Assets.images.img1, 
      title: "apple iMAc 24 (2021)", 
      price: 1299, 
      star: 4.9, 
      descTitle: "Get Apple TV+ free for a year",
      descDetail:"iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      colors: [Colors.cyan,Colors.black,Colors.blue],
      isSaved: false),

      product(
      image: Assets.images.img4, 
      title: "apple Watch V1", 
      price: 859, 
      star: 4.7, 
      descTitle: "Get Apple TV+ free for a year",
      descDetail:"iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      colors: [Colors.cyan,Colors.black,Colors.blue],
      isSaved: true),

      product(
      image: Assets.images.kt1png, 
      title: "apple iPhone 12 Series", 
      price: 1199, 
      star: 5.0, 
      descTitle: "Get Apple TV+ free for a year",
      descDetail:"iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      colors: [Colors.cyan,Colors.black,Colors.blue],
      isSaved: false),

     ]);

     
  HomeProductsModel mostPopular=
    HomeProductsModel(category_title: "Most  Popular",
     products:[
      product(
      image: Assets.images.kt5png, 
      title: "apple iMAc 30 (2018)", 
      price: 1000, 
      star: 4.9, 
      descTitle: "Get Apple TV+ free for a year",
      descDetail:"iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      colors: [Colors.cyan,Colors.black,Colors.blue],
      isSaved: true),

      product(
      image: Assets.images.kt1png, 
      title: "apple Watch V2", 
      price: 1999, 
      star: 4.7, 
      descTitle: "Get Apple TV+ free for a year",
      descDetail:"iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      colors: [Colors.cyan,Colors.black,Colors.blue],
      isSaved: false),

      product(
      image: Assets.images.kt2png, 
      title: "apple iPhone 13 Pro Max", 
      price: 1199, 
      star: 5.0, 
      descTitle: "Get Apple TV+ free for a year",
      descDetail:"iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      colors: [Colors.cyan,Colors.black,Colors.blue],
      isSaved: false),

     ]);
  
}
