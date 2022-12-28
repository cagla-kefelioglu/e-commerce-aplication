// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:e_ticaret_app/components/custom_button.dart';
import 'package:e_ticaret_app/view/checkout_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

import '../assets.dart';
import '../constant/constant.dart';

class Cart extends ConsumerStatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishlistState();
}

class _WishlistState extends ConsumerState<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: [15, 30].horizontalAndVerticalP,
        children: [
          Container(
            padding: [18, 12].horizontalAndVerticalP,
            margin: 20.horizontalP,
            decoration: BoxDecoration(
              color: Constant.yellow,
              borderRadius: 10.allBR,
            ),
            child: Center(
                child: Text("Delivery For Free Until The End Of The Month")),
          ),
          ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
              physics:
                  NeverScrollableScrollPhysics(), //kaymasını engellemiş oluruz
              itemCount: 2,
              shrinkWrap: true,
              padding: 40.verticalP,
              itemBuilder: (context, index) {
                return Container(
                  padding: 10.allP,
                  decoration: BoxDecoration(
                      color: Constant.white,
                      borderRadius: 10.allBR,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15,
                        )
                      ]),
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              Assets.images.img1,
                              width: Grock.width * 0.2,
                              height: Grock.width * 0.2,
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "iphone 18 pro max",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:15.0),
                              child: Text("\$799",
                                  style: TextStyle(
                                      fontSize: 24, fontWeight: FontWeight.bold)),
                            ),
                            Row(
                              children: [
                                Text("Quanity",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal)),
                                SizedBox(width: 5),
                                quantityButton(
                                    icon: Icons.remove, onTap: () {}),
                                Padding(
                                  padding: 5.horizontalP,
                                  child: Text("2",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ),
                                quantityButton(icon: Icons.add, onTap: () {}),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(), //column ile butonlar arasına max alan verir
                        IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
                      ],
                    ),
                  ),
                );
              }),
          Padding(
            padding:40.onlyBottomP,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total", style: _style),
                Text(
                  "\$1522",
                  style: _style,
                ),
              ],
            ),
          ),
          CustomButton(onTap: ()=>Grock.to(CheckoutView()), text:"Checkout"),
        ],
      ),
    );
  }

  // ignore: unused_field, prefer_final_fields
  TextStyle _style = TextStyle(fontSize: 32, fontWeight: FontWeight.bold);
  // ignore: dead_code
  Widget quantityButton({required IconData icon, required Function onTap}) {
    return GrockContainer(
      onTap: () => onTap(),
      width: 20,
      height: 20,
      decoration: BoxDecoration(color: Constant.orange, borderRadius: 4.allBR),
      child: Center(
          child: Icon(
        icon,
        color: Constant.darkWhite,
        size: 20,
      )),
    );
  }
}
