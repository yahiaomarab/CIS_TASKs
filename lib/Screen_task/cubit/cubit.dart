import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_cis/Screen_task/Doctor_screen.dart';
import 'package:task_cis/Screen_task/cubit/states.dart';

class appcubit extends Cubit<appstates>
{
  appcubit():super(intialstate());
  static appcubit get(context)=>BlocProvider.of(context);
  int currentstate=0;
  changebottomnavbar(int index)
  {
    currentstate=index;
    emit(changebottomnavState());
  }
  List<Widget>screens=[
    doctor_screen(),
    doctor_screen(),
    doctor_screen(),
    doctor_screen(),
    doctor_screen(),
  ];
}