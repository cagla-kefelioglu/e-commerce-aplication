// ignore_for_file: prefer_const_constructors, dead_code, unused_import

import 'package:e_ticaret_app/model/bottom_nav_bar_model.dart';
import 'package:e_ticaret_app/view/account.dart';
import 'package:e_ticaret_app/view/category.dart';
import 'package:e_ticaret_app/view/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../assets.dart';
import '../view/cart.dart';
import '../view/home.dart';

class BaseScaffoldRiverpod extends ChangeNotifier {
 List<BottomNavBarModel> items=[
   BottomNavBarModel(image: Assets.icons.icBottomHomeSVG, title: "Home"),
   BottomNavBarModel(image: Assets.icons.icBottomSaveSVG, title: "Wishlist"),
   BottomNavBarModel(image: Assets.icons.icBottomCategoriesSVG, title: "Category"),
   BottomNavBarModel(image: Assets.icons.icBottomProfileSVG, title: "Account"),
   BottomNavBarModel(image: Assets.icons.icBottomCartSVG, title: "Cart"),


 ];
 
int currentIndex=0;


void setCurrentIndex(int index){
  currentIndex=index;
  notifyListeners();

}
Widget body(){
  switch (currentIndex) {
    case 0:
    return Home();

     case 1:
    return Wishlist();

     case 2:
    return Category();

     case 3:
    return Account();

     case 4:
    return Cart();
      
      break;
    default: return Home();
  }
}

}




/* TIKLAYINCA İSİM GELEN İÇİN BUUUU 
class BaseScaffoldRiverpod extends ChangeNotifier {
 List<BottomNavigationBarItem> items=[
BottomNavigationBarItem(icon:SvgPicture.asset(Assets.icons.icBottomHomeSVG),label: "Home"),
BottomNavigationBarItem(icon:SvgPicture.asset(Assets.icons.icBottomSaveSVG),label:"Wishlist"),
BottomNavigationBarItem(icon:SvgPicture.asset(Assets.icons.icBottomCategoriesSVG),label:"Category"),
BottomNavigationBarItem(icon:SvgPicture.asset(Assets.icons.icBottomProfileSVG),label:"Account"),
BottomNavigationBarItem(icon:SvgPicture.asset(Assets.icons.icBottomCartSVG),label:"Cart"),


 ];
 
int currentIndex=0;


void setCurrentIndex(int index){
  currentIndex=index;
  notifyListeners();

}
}
 */