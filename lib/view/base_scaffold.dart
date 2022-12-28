// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:e_ticaret_app/assets.dart';
import 'package:e_ticaret_app/components/custom_appbar.dart';
import 'package:e_ticaret_app/components/custom_driwer.dart';
import 'package:e_ticaret_app/components/custom_nav_bar.dart';
import 'package:e_ticaret_app/riverpod/base_scaffol_riverpod.dart';
import 'package:e_ticaret_app/view/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grock/grock.dart';

import '../constant/constant.dart';

final baseScaffoldRiverpod =
    ChangeNotifierProvider((ref) => BaseScaffoldRiverpod());

class BaseScaffold extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends ConsumerState<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: SvgPicture.asset(Assets.icons.frameSVG),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
       
        title: Text(
          "iDrip",
          style: const TextStyle(
              color: Constant.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: 12.allP,
            child: SvgPicture.asset(Assets.icons.icSearchSVG),
          ),
        ],
        backgroundColor: Constant.darkWhite,
      ),
      drawer: SafeArea(
        child: SizedBox(
          width: width * 100,
          height: height * 100,
          child: Drawer(
            child: 
            ListView(
              padding: EdgeInsets.zero,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: height * 0.25,
                  child: DrawerHeader(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Container(
                          color: Constant.orange,
                          child: Column(
                            children: [
                              Padding(
                                padding: 12.allP,
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: SvgPicture.asset(
                                          Assets.icons.vectorSVG),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(
                            width: width * 0.8,
                            child: Container(
                                color: Constant.orange,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.25),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                Assets.images.eeveepng),
                                            backgroundColor: Constant.darkWhite,
                                            minRadius: 30,
                                            maxRadius: 35,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.025),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Çağla KEFELİOĞLU",
                                            style: TextStyle(
                                                color: Constant.white,
                                                fontSize: 25,
                                                fontFamily: 'Poppins'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.150),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "cagla@gmail.com",
                                            style: TextStyle(
                                                color: Constant.white,
                                                fontSize: 15,
                                                fontFamily: 'Ubuntu'),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )))
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    ListTile(
                      leading: IconButton(
                          onPressed: (() {}), icon:Icon(Icons.gif_box)  ),
                      title: Text("Siparişlerim"),
                    ),
                  ],
                ),
                ListTile(
                  leading: IconButton(
                      onPressed: (() {}), icon:Icon(Icons.online_prediction_sharp) ),
                  title: Text("Adreslerim"),
                ),
                ListTile(
                  leading: IconButton(
                      onPressed: (() {}), icon: Icon(Icons.card_membership)),
                  title: Text("Kartlarım"),
                ),
                ListTile(
                  leading: IconButton(
                      onPressed: (() {}), icon: Icon(Icons.card_giftcard)),
                  title: Text("Kuponlarım"),
                ),
                ListTile(
                  leading: IconButton(
                      onPressed: (() {}), icon: Icon(Icons.settings)),
                  title: Text("Ayarlar"),
                ),
                ListTile(
                  leading: IconButton(
                      onPressed: () => Grock.to(Login()),
                      icon: Icon(Icons.logout)),
                  title: Text("Çıkış Yap"),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
      body: ref.watch(baseScaffoldRiverpod).body(),
    );
  }
}

/*

 */
 