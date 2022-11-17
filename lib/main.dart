import 'package:flutter/material.dart';
import 'package:task_cis/Screen_task/Doctor_screen.dart';
import 'package:task_cis/Screen_task/layout_screen.dart';
import 'package:task_cis/Screen_task/themes.dart';

import 'Screen_task/Doctor_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:lightTheme,
      home:layout_screen() ,
    );
  }

}
