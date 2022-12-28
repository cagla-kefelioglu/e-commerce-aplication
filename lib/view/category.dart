// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_local_variable

import 'package:e_ticaret_app/riverpod/category_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

import '../components/ct_card.dart';
import '../constant/constant.dart';
import '../model/category_model.dart';
import '../riverpod/home_riverpod.dart';

final Categoryriverpod = ChangeNotifierProvider((ref) => CategoryRiverpod());
final homeRiverpod = ChangeNotifierProvider((ref) => HomeRiverpod());

class Category extends ConsumerStatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishlistState();
}

class _WishlistState extends ConsumerState<Category> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(Categoryriverpod); //anlık değişkenleri takip için
    var read = ref.read(Categoryriverpod);
    
    return Scaffold(
      body: ListView(
        children: [
          campaings(read, watch),
          categoryProductCard(read.ct_produsts),
        ],
      ),
    );
  }

  Widget categoryProductCard(CategoryProductsModel ct_model) {
    return SizedBox(
        height: 392,
        child: Scaffold(
          body: GridView.count(
            crossAxisCount: 2,
            children: List.generate(ct_model.ct_products.length, (index) {
              return CategoryCard(
                ct_productt: ct_model.ct_products[index],
              );
            }),
          ),
        ));
  }

  SizedBox campaings(CategoryRiverpod read, CategoryRiverpod watch) {
    return SizedBox(
      height: 210,
      child: Stack(children: [
        campaingsPageView(read, watch),
        campaignsDot(read, watch),
      ]),
    );
  }

  Align campaignsDot(CategoryRiverpod read, CategoryRiverpod watch) {
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

  PageView campaingsPageView(CategoryRiverpod read, CategoryRiverpod watch) {
    return PageView.builder(
      controller: read.pageController,
      itemCount: read.campaigns.length,
      itemBuilder: ((context, index) => Image.asset(watch.campaigns[index])),
      onPageChanged: (newPageValue) => read.setCampaignsIndex(newPageValue),
    );
  }
}
