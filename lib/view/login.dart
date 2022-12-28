// ignore_for_file: unused_import, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new, no_leading_underscores_for_local_identifiers, import_of_legacy_library_into_null_safe, unused_local_variable, prefer_const_literals_to_create_immutables, dead_code

import 'package:e_ticaret_app/view/base_scaffold.dart';
import 'package:e_ticaret_app/view/register.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:widget_utils/widget_utils.dart';
import '../assets.dart';
import '../constant/constant.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Constant.orange,
              child: Column(
                children: [
                  Padding(
                    padding: [10, 0, 10, 0].paddingLTRB,
                    child: SizedBox(
                      height: height * 0.1,
                      child: SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              width: 23,
                              child: TextButton(
                                  onPressed: () {
                                    Grock.back();
                                  },
                                  child: Icon(Icons.arrow_back,
                                      color: Constant.darkWhite, size: 23)),
                            ),
                            TextButton(
                              onPressed: () {
                                Grock.to(Register());
                              },
                              child: Text("Register",
                                  style: TextStyle(
                                      color: Constant.darkWhite,
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.3,
                    width: width * 1,
                    child: Padding(
                      padding: [10, height * 0.05, 10, 0].paddingLTRB,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                    style: TextStyle(
                                        color: Constant.white,
                                        fontSize: 30,
                                        fontFamily: 'Lobster',
                                        letterSpacing: 2),
                                    "Sign In"),
                              ],
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: width * 0.9,
                                  child: Text(
                                      style: TextStyle(
                                        color: Constant.white,
                                        fontSize: 16,
                                        fontFamily: 'Ubuntu',
                                      ),
                                      "Lorem ipsum dolor sit amet, conectetur adipiscing elit, sed do eiusmod tempor incididunt ut emek ve dolore magna aliqua. "),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.6,
                    width: width * 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Constant.darkWhite,
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
                      child: Container(
                        child: Form(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 50),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: width * 1,
                                  height: 60,
                                  child: TextFormField(
                                    /*  validator: (deger) {
                                              if (deger!.isEmpty) {
                                                return "Lütfen kullanıcı adınızı giriniz ";
                                              } else {
                                                return null;
                                              }
                                            },*/
                                    decoration: 
                                    InputDecoration(
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 195, 23, 10),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      filled:
                                          true, //backgroundu değişmek için true yapılır
                                      fillColor: Color.fromARGB(
                                          105, 229, 226, 226), //background
                                      prefixIcon: Icon(
                                        Icons.person_outline_rounded,
                                        color:
                                            Color.fromARGB(255, 136, 135, 135),
                                      ),
                                      hintText: "user name",
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              232, 158, 158, 158),
                                          fontSize: 16,
                                          fontFamily: 'Ubuntu',
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 2),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 1,
                                  height: 60,
                                  child: TextFormField(
                                    /*validator: (deger) {
                                            if (deger!.length < 6) {
                                              return "şifre en az 6 haneli olmalıdır";
                                            } else {
                                              return null;
                                            }
                                          },*/
                                    decoration: InputDecoration(
                                      errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 195, 23, 10),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      filled:
                                          true, //backgroundu değişmek için true yapılır
                                      fillColor: Color.fromARGB(
                                          105, 229, 226, 226), //background
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color:
                                            Color.fromARGB(255, 136, 135, 135),
                                      ),
                                      hintText: "password",
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              232, 158, 158, 158),
                                          fontSize: 16,
                                          fontFamily: 'Ubuntu',
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 2),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Grock.to(Register());
                                        },
                                        child: Text(
                                          "Forgot Password ?",
                                          style: TextStyle(
                                              color: Constant.dark,
                                              fontFamily: 'Ubuntu',
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.bold),
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  width: width * 1,
                                  height: 60,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Constant.dark,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      50))),
                                      onPressed: () {
                                        Grock.to(BaseScaffold());
                                      },
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(
                                            color: Constant.darkWhite),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    InputDecoration _fiedlDecoration = InputDecoration(
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 195, 23, 10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        filled: true, //backgroundu değişmek için true yapılır
        fillColor: Color.fromARGB(105, 229, 226, 226), //background
        prefixIcon: Icon(
          Icons.lock,
          color: Color.fromARGB(255, 136, 135, 135),
        ),
        hintText: "password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        hintStyle: TextStyle(
          color: Color.fromARGB(232, 158, 158, 158),
          fontSize: 16,
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.w600,
        ));
  }
}






  