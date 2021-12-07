import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_demo/cubit/app_cubits.dart';
import 'package:master_demo/cubit/app_cubits_logics.dart';
import 'package:master_demo/nav_pages/main_page.dart';
import 'package:master_demo/pages/detail_page.dart';
import 'package:master_demo/pages/welcome_page.dart';
import 'package:master_demo/services/data_services.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Master Class",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:BlocProvider<AppCubits>(
        create:(context)=>AppCubits(
          data: DataServices(),
        ),
        child: AppCubitsLogics(),
      )
    );
  }
}