// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import

import 'package:e_ticaret_app/view/base_scaffold.dart';
import 'package:e_ticaret_app/view/info.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import '../assets.dart';
import '../constant/constant.dart';


class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

void initState() {

  Future.delayed(const Duration(seconds:2),(){
    Grock.toRemove(info());
  });


    super.initState();
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.darkWhite,
      body:Center(child: Image.asset(Assets.images.img8,fit:BoxFit.fill,),)
    );
  }
}