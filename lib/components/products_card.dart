// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:e_ticaret_app/constant/constant.dart';
import 'package:e_ticaret_app/model/product.dart';
import 'package:e_ticaret_app/view/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class ProductCard extends StatelessWidget {
  product products;

  ProductCard({required this.products});
  @override
  Widget build(BuildContext context) {
    return GrockContainer(
      onTap: () => Grock.to(ProductDetail(productt: products)),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: 15.allBR,
        color: Constant.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black26,
        //     blurRadius: 8,
        //   )
        // ],
      ),
      child: SizedBox(
        height: 220,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: 10.allBR),
          child: IntrinsicHeight(
            child: Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    
                    height: 120,
                    width: 200,
                    child: Hero(
                      tag: products.image,
                      child: Image.asset(
                        products.image,
                       //fit: BoxFit.fill,
                        //width: 90,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: 10.horizontalP,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                              products.title,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                            )),
                            products.isSaved
                                ? Icon(
                                    Icons.bookmark_border_rounded,
                                    color: Constant.black,
                                  )
                                : Icon(
                                    Icons.bookmark,
                                    color: Constant.orange,
                                  )
                          ],
                        ),
                      ),
                      Padding(
                        padding: [10, 5].horizontalAndVerticalP,
                        child: Row(
                          children: [
                            Text(
                              "\$${products.price}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: [10, 0].horizontalAndVerticalP,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rate_rounded,
                              color: Constant.orange,
                              size: 22,
                            ),
                            Text(
                              "${products.star}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
