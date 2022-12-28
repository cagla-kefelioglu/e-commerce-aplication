// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, prefer_final_fields, unused_local_variable

import 'package:e_ticaret_app/components/custom_appbar.dart';
import 'package:e_ticaret_app/components/custom_button.dart';
import 'package:e_ticaret_app/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class ProductDetail extends ConsumerStatefulWidget {
  product productt;

  ProductDetail({required this.productt});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductDetailState();
}

class _ProductDetailState extends ConsumerState<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      
      child: Scaffold(
        
      body: Stack(
          
          children: [
            ListView(               
              children: [
                image(),
                title(),
                colors(width),
                subDetail(context),
                price(context),
                button()
              ],
            ),
            appBar()
          ],
        ),
      ),
    );
  }

  Padding button() {
    return Padding(
      padding: [20, 20, 20, 20].paddingLTRB,
      child: CustomButton(onTap: () {}, text: "Add To Cart"),
    );
  }

  Padding price(BuildContext context) {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Total",
            style: _subTitle,
          ),
          Text(
            "\$${widget.productt.price}",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Padding title() {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Text(
        widget.productt.title,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }

  SafeArea appBar() {
    return SafeArea(
      child: Padding(
        padding: 10.horizontalP,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => Grock.back(),
              icon: Icon(Icons.keyboard_arrow_left_rounded,
                  size: 32, color: Colors.black),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark_add_outlined,
                    size: 32, color: Colors.black))
          ],
        ),
      ),
    );
  }

  Padding subDetail(BuildContext context) {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.productt.descTitle,
            style: _subTitle,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            widget.productt.descDetail,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }

  Padding colors(final width) {
    return Padding(
      padding: [20, 20, 20, 0].paddingLTRB,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Colors",
            style: _subTitle,
          ),
          SizedBox(
            height: 8,
          ),
          Wrap(
            spacing: width*0.05,
            children: [
              for (int i = 0; i < widget.productt.colors.length; i++)
                Container(
                  width: width*0.25,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: 10.allBR,
                    color: widget.productt.colors[i],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox image() {
    return SizedBox(
      // height:height*0.5,
      width: double.maxFinite, //gidebildiği yere kadar gider
      child: Hero(
        tag: widget.productt.image,
        child: Image.asset(
          widget.productt.image,
          //width: width * 0.3,
        ),
      ),
    );
  }

  TextStyle _subTitle = TextStyle(fontSize: 17, fontWeight: FontWeight.bold);
}
/*
appBar: AppBar(
        title: null,
        backgroundColor: Colors.transparent,
        elevation: 0, //gölge değerini sıfırladık
        leading: Icon(Icons.keyboard_arrow_left_rounded,
            size: 32, color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.bookmark_add_outlined,
                  size: 32, color: Colors.black))
        ],
      ),
*/