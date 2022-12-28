// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_new

import 'package:e_ticaret_app/constant/constant.dart';
import 'package:e_ticaret_app/view/login.dart';
import 'package:e_ticaret_app/view/register.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

import '../assets.dart';

class info extends StatelessWidget {
  const info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constant.darkWhite,
      child: Column(
        children: [
          SizedBox(
            height: Grock.height * 0.51,
            child: SafeArea(
              child: ColoredBox(
                color: Constant.darkWhite,
                child: Image.asset(Assets.images.img8),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  color: Constant.orange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Welcome",
                        style: TextStyle(
                            color: Constant.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 5,
                            fontFamily: 'Lobster'),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                          style: TextStyle(
                            color: Constant.white,
                            fontSize: 16,
                            fontFamily: 'Ubuntu',
                          ),
                          "Lorem ipsum dolor sit amet, conectetur adipiscing elit, sed do eiusmod tempor incididunt ut emek ve dolore magna aliqua. "),
                      SizedBox(
                        height: 50,
                      ),
                      Row(         
                        children: [                    
                          Expanded(
                            child: SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(20)),
                                      backgroundColor: Colors.black),
                                  onPressed: (){
                                    Grock.to(Login());
                                  },
                                  child: Text(
                                    "Sign In",
                                    style:
                                        TextStyle(fontSize: 20, letterSpacing: 2),
                                  )),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            child: SizedBox(
                            
                              height: 60,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(20)),
                                      backgroundColor: Constant.darkWhite),
                                  onPressed: () {Grock.to(Register());},
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        letterSpacing: 2),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


