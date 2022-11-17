import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_cis/Screen_task/cubit/cubit.dart';
import 'package:task_cis/Screen_task/cubit/states.dart';

class layout_screen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return BlocProvider(

      create: (BuildContext context)
        {
           return appcubit();
        },

      child: BlocConsumer<appcubit,appstates>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Doctors',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Jannah'
                ),
              ),
              actions: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.info,color: Colors.grey[400],),
                ),
              ],
            ),
            body:appcubit.get(context).screens[appcubit.get(context).currentstate] ,
            bottomNavigationBar: Container(
              height: 70,
              child: GNav(
                  rippleColor: Colors.white, // tab button ripple color when pressed
                  hoverColor: Colors.white, // tab button hover color
                  haptic: true, // haptic feedback
                  tabBorderRadius: 15,
                  curve: Curves.easeOutExpo, // tab animation curves
                  duration: Duration(milliseconds: 200),
                  gap: 8,
                  color: Colors.black, 
                  activeColor: HexColor('3333FF'),
                  iconSize: 24,
                  tabBackgroundColor: HexColor('3333FF').withOpacity(0.1),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.wechat_sharp,
                      text: 'Chats',
                    ),
                    GButton(
                      icon: Icons.calendar_month_rounded,
                      text: 'Calender',
                    ),
                    GButton(
                      icon: Icons.shopping_bag_rounded,
                      text: 'Doctors',
                    ),
                    GButton(
                      icon: Icons.settings,
                      text: 'Settings',
                    ),
                  ],
                onTabChange: (int index){
                  appcubit.get(context).changebottomnavbar(index);
                },

              ),
            ),
          );
        },

      ),
    );
  }

}
// Container(
//               height: 70,
//               child: BottomNavigationBar(
//                 type: BottomNavigationBarType.shifting,
//                 currentIndex: appcubit.get(context).currentstate,
//                 onTap: (int index){
//                   appcubit.get(context).changebottomnavbar(index);
//                 },
//                 items: [
//
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.home,color: Colors.black,),
//                       label: 'home'
//
//                   ),
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.wechat_sharp,color: Colors.black,),
//                       label: 'chats'
//                   ),
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.calendar_month_rounded,color: Colors.black,),
//                       label: 'calendar'
//                   ),
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.health_and_safety,color: Colors.black,),
//                       label: 'Doctors'
//                   ),
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.settings,color: Colors.black,),
//                       label: 'Settings'
//                   ),
//
//                 ],
//               ),
//             ),