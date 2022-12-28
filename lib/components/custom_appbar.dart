// ignore_for_file: camel_case_types, must_be_immutable

/* import 'package:e_ticaret_app/assets.dart';
import 'package:e_ticaret_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grock/grock.dart';

class customAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  String appBarTitle;

  customAppbar({Key? key, this.appBarTitle = "iDrip"})
      : preferredSize = const Size.fromHeight(100.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style:
              const TextStyle(color: Constant.black, fontWeight: FontWeight.bold),
        ),      
        actions: [
          Padding(
            padding: 12.allP,
            child: SvgPicture.asset(Assets.icons.icSearchSVG),
          ),
        ],
        leading: Padding(
          padding: 12.allP,
          child: SvgPicture.asset(Assets.icons.icDrawerSVG),),
        backgroundColor: Constant.darkWhite,             
      ),

    );
  }
}

*/