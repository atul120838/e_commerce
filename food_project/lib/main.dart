//import 'dart:html';

import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:food_project/admin/add_food.dart';
import 'package:food_project/admin/admin_login.dart';
import 'package:food_project/pages/bottom.dart';
import 'package:food_project/pages/home.dart';
import 'package:food_project/pages/login.dart';
import 'package:food_project/pages/onboard.dart';
import 'package:food_project/pages/profile.dart';
import 'package:food_project/pages/signup.dart';
import 'package:food_project/pages/wallet.dart';
import 'package:food_project/widgets/app_constant.dart';

import 'admin/home_admin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = publishablekey;
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyDwBJ6bf8onEP3ozGr8d34wBhEPiIP9F7k",
              appId: "1:700587761336:android:d2cdd34c92a8fec0bcde4d",
              messagingSenderId: "700587761336",
              projectId: "fooddeliveryapp-9d0ca",
              storageBucket: "fooddeliveryapp-9d0ca.appspot.com"
            ),
        )
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: bottom());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Text(''));
  }
}
