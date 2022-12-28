// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

class product{
   String image;
   String title;
   int price;
   double star;
   String descTitle;
   String descDetail;
   List<Color>colors;
   bool isSaved;

   product({
    required this.image,
    required this.title,    
    required this.price,
    required this.star,
    required this.isSaved,
    required this.colors,
    required this.descDetail,
    required this.descTitle, 
    

   });

}