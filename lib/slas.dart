import 'dart:async';
import 'package:flutter/material.dart';
import 'package:practice_database/main.dart';

class Splash extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return slasstate();
  }
}
class slasstate extends State<Splash>
{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>mainpage()       
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('Splash_Screen'),),
      body:Container(color:Colors.blue,height: double.infinity,width: double.infinity,
      
      child:const Center(child: Icon(Icons.home,size: 250,))

      )
    );
  }
}