import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget{
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Container(
        child: Center(
          child: Text("vasco")
        ),
        width: 150,
        height: 150,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(color: Colors.black, width: 2),
          /*borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )*/
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}