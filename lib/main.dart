import 'package:flutter/material.dart';
import 'package:responsivewebapp/landingpage.dart';
import 'makenavbar.dart';
import 'landingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height, //to adjust height according to screen size
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromRGBO(225, 112, 85, 1.0),
              Color.fromRGBO(254, 201, 87, 1.0),
            ])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MakeNavbar(),
              LandingPage(),
            ],
          ),
        ),
      ),
    );
  }
}
