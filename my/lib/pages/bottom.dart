import 'package:flutter/material.dart';
import 'package:my/pages/home.dart';
import 'package:my/pages/jobs.dart';
import 'package:my/pages/mynetwork.dart';
import 'package:my/pages/post.dart';
import 'package:my/pages/notification.dart';
import "package:curved_navigation_bar/curved_navigation_bar.dart";

class Bottom extends StatefulWidget {

  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentTabIndex= 0;

  late List<Widget>pages;
  late Widget currentpages;
  late Home homepage;
  late Mynetwork mynetwork;
  late Post post;
  late Notice notice;
  late Jobs jobs;




  @override
  void initState(){
homepage=Home();
mynetwork=Mynetwork();
post=Post();
notice = Notice();
jobs=Jobs();



pages=[homepage,mynetwork,post,notice,jobs,
];

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height:65, backgroundColor: Colors.white,
        color: Colors.black45,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {

          setState(() {
          currentTabIndex=index;
          });
        },
        items: [
          Icon(Icons.home_outlined,
          color: Colors.white,
          ),
          Icon(Icons.people_alt_outlined,
            color: Colors.white,),
          Icon(Icons.post_add_outlined,
            color: Colors.white,),
          Icon(Icons.notification_add_outlined,
          color: Colors.white,),
          Icon(Icons.shopping_bag_outlined,
          color: Colors.white,
          ),


        ],

      ),
      body: pages[currentTabIndex],

    );
  }
}
