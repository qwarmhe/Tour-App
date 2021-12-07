import 'package:flutter/material.dart';
import 'package:master_demo/nav_pages/bar_item_page.dart';
import 'package:master_demo/nav_pages/my_page.dart';
import 'package:master_demo/nav_pages/search_page.dart';
import 'package:master_demo/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages=[
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage()

  ]; 

  int currentIndex = 0;
  
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap:onTap,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon:Icon(Icons.apps)
          ),
          BottomNavigationBarItem(
            title: Text("Bar"),
            icon:Icon(Icons.bar_chart_sharp)
          ),
          BottomNavigationBarItem(
            title: Text("Search"),
            icon:Icon(Icons.search)
          ),
          BottomNavigationBarItem(
            title: Text("My"),
            icon:Icon(Icons.person)
          ),
        ],
      ),
    );
  }
}