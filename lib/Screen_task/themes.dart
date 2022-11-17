import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Myfont',
  scaffoldBackgroundColor: Colors.grey[200],
  appBarTheme:AppBarTheme(
    color: Colors.grey[200],
    elevation: 0,
    centerTitle: true,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
         type: BottomNavigationBarType.fixed,
         showSelectedLabels:true ,
         showUnselectedLabels: false,
         selectedItemColor: Colors.deepPurpleAccent[200],
         selectedLabelStyle: TextStyle(

         ),

     ),
  textTheme: TextTheme(
     bodyText1: TextStyle(
         fontFamily: 'Jannah',
         fontSize: 20,
         height: 1.3,
         fontWeight: FontWeight.w800,
         color: Colors.black87
    ),
     bodyText2: TextStyle(
         fontFamily: 'Jannah',
         fontSize: 15,
         height: 1.3,
         fontWeight: FontWeight.w300,
         color: Colors.black87
     ),
     caption: TextStyle(
       fontFamily: 'Jannah',
       fontSize: 15,
       height: 1.3,
       fontWeight: FontWeight.w100,
       color: Colors.grey[500],
     ),
   ),

iconTheme: IconThemeData(
  color: Colors.black,
)


) ;