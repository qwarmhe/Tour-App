import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_demo/cubit/app_cubit_states.dart';
import 'package:master_demo/cubit/app_cubits.dart';
import 'package:master_demo/pages/detail_page.dart';
import 'package:master_demo/pages/home_page.dart';
import 'package:master_demo/pages/welcome_page.dart';

class AppCubitsLogics extends StatefulWidget {
  const AppCubitsLogics({ Key? key }) : super(key: key);

  @override
  _AppCubitsLogicsState createState() => _AppCubitsLogicsState();
}

class _AppCubitsLogicsState extends State<AppCubitsLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits,CubitStates>(
        builder: (context,state){
           if(state is WelcomeState){
             return WelcomePage();
           }
           if(state is LoadedState){
             return HomePage();
           }
           if(state is DetailState){
             return DetailPage();
           }
           if(state is LoadingState){
             return Center(
               child: CircularProgressIndicator(),
             );
           }
           else{
             return Container();
           }
        },
      ),
    );
  }
}