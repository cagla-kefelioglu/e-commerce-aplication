// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
class Driwer extends StatelessWidget {
  const Driwer({super.key});

  @override
  Widget build(BuildContext context) {
     final width=MediaQuery.of(context).size.width;
     final height=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
       
           drawer: Drawer(
          child: SizedBox(
            
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("sjdhfjkshdg"),
                    Text("sjdhfjkshdg"),
                        Text("sjdhfjkshdg"),
                            Text("sjdhfjkshdg"),
                                Text("sjdhfjkshdg"),
                                    Text("sjdhfjkshdg"),
              ],
              
            ),
          ),
        ),
       
        
      ),
    );
  }
}