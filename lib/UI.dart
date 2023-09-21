import 'package:flutter/material.dart';

class button extends StatelessWidget
{
  final String btnName;
  final VoidCallback;
  final color;

  const button({
    required this.btnName, 
    required this.VoidCallback,
    this.color
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      VoidCallback();
    }, child: Text('$btnName'));
  }
}