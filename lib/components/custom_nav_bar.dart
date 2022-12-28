// ignore_for_file: unused_import, unused_local_variable, prefer_const_constructors

import 'package:e_ticaret_app/constant/constant.dart';
import 'package:e_ticaret_app/main.dart';
import 'package:e_ticaret_app/view/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grock/grock.dart';

class CustomBottomNavBar extends ConsumerWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(baseScaffoldRiverpod);
    var read = ref.read(baseScaffoldRiverpod);
    return SafeArea(
      top: false,
      child: Container(
        width: Grock.width,
        height: 110,
        padding: [10, 30].horizontalAndVerticalP,
        decoration: BoxDecoration(
            color: Constant.darkWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)]),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (int i = 0; i < read.items.length; i++)
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    GrockContainer(
                      onTap: () {
                        read.setCurrentIndex(i);
                      },
                      child: Column(
                        mainAxisSize:
                            MainAxisSize.min, //barın ekranın altına inmesi için
                        children: [
                          SvgPicture.asset(read.items[i].image,
                              color: i == watch.currentIndex
                                  ? Constant.orange
                                  : Constant.black),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(read.items[i].title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: i == watch.currentIndex
                                      ? Constant.orange
                                      : Constant.black))
                        ],
                      ),
                    ),
                    Visibility(
                      visible: i == watch.currentIndex,
                      child: Positioned.fill(
                        top: -110,
                        child: Align(
                          child: Container(
                            width: 32,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: 10.allBR,
                              color: Constant.orange,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
            ]),
      ),
    );
  }
}


/* TIKLANINCA YAZI GÖZÜKEN BOTTOM BAR
BottomNavigationBar(
      items:read.items,
      currentIndex:watch.currentIndex,
      onTap:(newPageIndex)=>read.setCurrentIndex(newPageIndex),
      backgroundColor:Constant.darkWhite ,
      selectedItemColor: Constant.orange,
      unselectedItemColor: Constant.black,
      
    );
*/ 