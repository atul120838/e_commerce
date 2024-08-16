import 'package:e_com/widget/support_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hey,Atul pratap singh",
                style: AppWidget.boldTextFeildStyle()),
            Text(
              "Good Morning",
              style: AppWidget.lightTextFeildStyle(),
            )
          ],
        ),
      ),
    );
  }
}
