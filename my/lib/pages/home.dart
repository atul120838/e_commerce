import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my/support/help.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10,right: 20,top: 1),
                child: CircleAvatar(

                  ),

                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 50,),
               Container(

              width: 300,
              height: 40,

              child:TextField(
          decoration:InputDecoration(
            prefixIcon: Icon(Icons.search_outlined),
            hintText: 'Search',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5)
            )
          ) ,
              )

              )

            ],
          ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Container(
                       padding: EdgeInsets.only(left: 40),
                       child: Icon(Icons.message_outlined),
                     )
                    ],
                  ),
                ],
              ),
          SizedBox(height: 10,),
          Column(
            children: [
              Container(
              height: 10,
                width:MediaQuery.of(context).size.width,
                color: Colors.grey,
              )
            ],
          )


              ]
              ),




    );
  }
}
