import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_recipe/views/home.dart';



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=> Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Display())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Center(
        child:

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Anime Walls',style:TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.w500) ,),
          ],
        ),




      ) ,


    );
  }
}

