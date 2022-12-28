// ignore_for_file: unused_import, depend_on_referenced_packages, prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:e_ticaret_app/assets.dart';
import 'package:e_ticaret_app/components/custom_appbar.dart';
import 'package:e_ticaret_app/components/products_card.dart';
import 'package:e_ticaret_app/model/category_model.dart';
import 'package:e_ticaret_app/model/home_products_model.dart';
import 'package:e_ticaret_app/riverpod/category_riverpod.dart';
import 'package:e_ticaret_app/riverpod/home_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

import '../components/ct_card.dart';
import '../components/ct_card_two.dart';
import '../constant/constant.dart';
import 'category.dart';

final homeRiverpod = ChangeNotifierProvider((ref) => HomeRiverpod());
final categorieRiverpod = ChangeNotifierProvider((ref) => CategoryRiverpod());

class Home extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeRiverpod); //anlık değişkenleri takip için
    var read = ref.read(homeRiverpod);
    var readd = ref.read(categorieRiverpod); //tetikleme işlemleri için
    return Scaffold(
      body: ListView(children: [
        campaings(read, watch),
        space(),
        homeProductCategories(read.hotDeals),
        homeProductCategories(read.mostPopular),
        homeCategoriesProductCategories(readd.ct_produsts)


      ]),
    );
  }

  Widget homeProductCategories(HomeProductsModel model) {
    return Column(
      children: [
        Padding(
          padding: [20, 25, 20, 15].paddingLTRB,
          child: Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, //elemanları max alanda uzaklaştırır
            children: [
              Text(model.category_title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
              Text(
                "See All",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color(0xffA6A6AA)),
              )
            ],
          ),
        ),
        SizedBox(
          height: 270,
          child: ListView.separated(
            separatorBuilder:(context,index)=>SizedBox(width: 20,) ,
            itemCount: model.products.length,
            padding: [20,10,20,10].paddingLTRB,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ProductCard(products: model.products[index]);
            },
          ),
        )
      ],
    );
  }

  Widget space() => SizedBox(
        height: 20,
      );
  SizedBox campaings(HomeRiverpod read, HomeRiverpod watch) {
    return SizedBox(
      height: 210,
      child: Stack(children: [
        campaingsPageView(read, watch),
        campaignsDot(read, watch),
      ]),
    );
  }

  Align campaignsDot(HomeRiverpod read, HomeRiverpod watch) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: 12.onlyBottomP,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < read.campaigns.length; i++)
              Container(
                width: 8,
                height: 8,
                margin: 3.allP,
                decoration: BoxDecoration(
                  color: watch.campaignsCurrentIndex == i
                      ? Constant.white
                      : Constant.gray,
                  shape: BoxShape.circle,
                ),
              )
          ],
        ),
      ),
    );
  }

  PageView campaingsPageView(HomeRiverpod read, HomeRiverpod watch) {
    return PageView.builder(
      controller: read.pageController,
      itemCount: read.campaigns.length,
      itemBuilder: ((context, index) => Image.asset(watch.campaigns[index])),
      onPageChanged: (newPageValue) => read.setCampaignsIndex(newPageValue),
    );
  }

  Widget homeCategoriesProductCategories(CategoryProductsModel model) {
    return Column(
      children: [
        Padding(
          padding: [20, 25, 20, 15].paddingLTRB,
          child: Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, //elemanları max alanda uzaklaştırır
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Categories",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
            TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(decoration: TextDecoration.underline,
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color(0xffA6A6AA)),
                    
            ),
            onPressed: ()=> Grock.to(Category()),
            child: const Text('See All'),
          ),
            ],
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.separated(
            separatorBuilder:(context,index)=>SizedBox(width: 20,) ,
            itemCount: model.ct_products.length,
            padding: [20,10,20,10].paddingLTRB,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CategoryCardTwo(ct_productt: model.ct_products[index]);
            },
          ),
        )
      ],
    );
  }

}
