  // ignore_for_file: unused_import, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new, no_leading_underscores_for_local_identifiers, import_of_legacy_library_into_null_safe
/*
  import 'package:e_ticaret_app/view/base_scaffold.dart';
  import 'package:e_ticaret_app/view/register.dart';
  import 'package:flutter/material.dart';
  import 'package:grock/grock.dart';
  import 'package:widget_utils/widget_utils.dart';
  import '../assets.dart';
  import '../constant/constant.dart';

  class Login extends StatefulWidget {
    @override
    State<Login> createState() => _LoginState();
  }

  class _LoginState extends State<Login> {
    @override

    // ignore: annotate_overrides
    Widget build(BuildContext context) {
      final _formkey = GlobalKey<FormState>();
      return  Scaffold(
        body:   Container(   
              
              color: Constant.orange,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: [10, 0, 10, 0].paddingLTRB,
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
                  Padding(
                    padding: [15, 0, 7, 0].paddingLTRB,
                    child: Container(
                      margin: EdgeInsets.only(top: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                              style: TextStyle(
                                  color: Constant.white,
                                  fontSize: 30,
                                  fontFamily: 'Lobster',
                                  letterSpacing: 2),
                              "Sign In"),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              style: TextStyle(
                                color: Constant.white,
                                fontSize: 16,
                                fontFamily: 'Ubuntu',
                              ),
                              "Lorem ipsum dolor sit amet, conectetur adipiscing elit, sed do eiusmod tempor incididunt ut emek ve dolore magna aliqua. "),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    child: 
                    Container(
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:25,
                            vertical: 50),
                        child: Container(
                          child: Form(
                            key: _formkey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextFormField(
                                  
                                /*  validator: (deger) {
                                    if (deger!.isEmpty) {
                                      return "Lütfen kullanıcı adınızı giriniz ";
                                    } else {
                                      return null;
                                    }
                                  },*/
                                  decoration: InputDecoration(
                                    
                                    filled:
                                        true, //backgroundu değişmek için true yapılır
                                    fillColor: Color.fromARGB(
                                        105, 229, 226, 226), //background
                                    prefixIcon: Icon(
                                      Icons.person_outline_rounded,
                                      color: Color.fromARGB(255, 136, 135, 135),
                                    ),
                                    hintText: "user name",
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
                                    hintStyle: TextStyle(
                                        color: Color.fromARGB(232, 158, 158, 158),
                                        fontSize: 16,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ),
                                TextFormField(
                                  /*validator: (deger) {
                                    if (deger!.length < 6) {
                                      return "şifre en az 6 haneli olmalıdır";
                                    } else {
                                      return null;
                                    }
                                  },*/
                                  decoration: InputDecoration(
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
                                    filled:
                                        true, //backgroundu değişmek için true yapılır
                                    fillColor: Color.fromARGB(
                                        105, 229, 226, 226), //background
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
                                        letterSpacing: 2),
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
                                width: 300,
                                  height:60,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Constant.dark,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(50))),
                                      onPressed: () {
                                        if (_formkey.currentState!.validate()) {
                                          Grock.to(BaseScaffold());
                                        }
                                      },
                                      child: Text(
                                        "Sign In",
                                        style:
                                            TextStyle(color: Constant.darkWhite),
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
            )
          
      
      );
    
      
    }
  }
*/




/*
// ignore_for_file: unused_import, duplicate_import, must_be_immutable

import 'package:flutter/material.dart';

// ignore_for_file:, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new, no_leading_underscores_for_local_identifiers

import 'package:e_ticaret_app/view/base_scaffold.dart';
import 'package:e_ticaret_app/view/register.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import '../assets.dart';
import '../constant/constant.dart';
import 'login.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

}
 
class _RegisterState extends State<Register> {
  @override

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      body: Container(
        color: Constant.orange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: [10, 0, 10, 0].paddingLTRB,
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
                        Grock.to(Login());
                      },
                      child: Text("Login",
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
            Padding(
              padding: [15, 0, 7, 0].paddingLTRB,
              child: Container(
                margin: EdgeInsets.only(top: 35 , bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                        style: TextStyle(
                            color: Constant.white,
                            fontSize: 30,
                            fontFamily: 'Lobster',
                            letterSpacing: 2),
                        "Register"),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        style: TextStyle(
                          color: Constant.white,
                          fontSize: 16,
                          fontFamily: 'Ubuntu',
                        ),
                        "Lorem ipsum dolor sit amet, conectetur adipiscing elit, sed do eiusmod tempor incididunt ut emek ve dolore magna aliqua. "),
                  ],
                ),
              ),
            ),
           
            Expanded(
              child: SizedBox(
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
                  child: Padding(
                    padding: [25, 50, 25, 50].paddingLTRB,
                    child: Container(
                      child: Form(
                        key: _formkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextFormField(
                              validator: (deger) {
                                if (deger!.isEmpty) {
                                  return "Lütfen kullanıcı adınızı giriniz ";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                filled:
                                    true, //backgroundu değişmek için true yapılır
                                fillColor: Color.fromARGB(
                                    105, 229, 226, 226), //background
                                prefixIcon: Icon(
                                  Icons.person_outline_rounded,
                                  color: Color.fromARGB(255, 136, 135, 135),
                                ),
                                hintText: "user name",
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
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(232, 158, 158, 158),
                                    fontSize: 16,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 2),
                              ),
                            ),
                            TextFormField(
                              controller: widget.t1,
                              validator: (deger) {
                                if (deger!.length < 6) {
                                  return "şifre en az 6 haneli olmalıdır";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
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
                                filled:
                                    true, //backgroundu değişmek için true yapılır
                                fillColor: Color.fromARGB(
                                    105, 229, 226, 226), //background
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
                                    letterSpacing: 2),
                              ),
                            ),
                                 TextFormField(
                                  controller: widget.t2,
                              validator: (deger) {
                                if (widget.t2.text!=widget.t1.text) {
                                  return "şifreler aynı değil";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
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
                                filled:
                                    true, //backgroundu değişmek için true yapılır
                                fillColor: Color.fromARGB(
                                    105, 229, 226, 226), //background
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color.fromARGB(255, 136, 135, 135),
                                ),
                                hintText: "password repetition",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(232, 158, 158, 158),
                                    fontSize: 16,
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 2),
                              ),
                            ),
                           
                            SizedBox(
                              width: 400,
                              height: 55,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Constant.dark,
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(50))),
                                  onPressed: () {
                                    if (_formkey.currentState!.validate()) {
                                      //Grock.to(Login());
                                      Grock.to(BaseScaffold());
                                    }
                                  },
                                  child: Text(
                                    "Register",
                                    style: TextStyle(color: Constant.darkWhite),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


*/ 