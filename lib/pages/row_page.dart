import 'package:flutter/material.dart';

class RowPage extends StatelessWidget{
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componente row"),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
            margin: EdgeInsets.all(10),
          ),
          Container(
            width: 50,
            height: 70,
            color: Colors.green,
            margin: EdgeInsets.all(10),
          ),
          Container(
            width: 50,
            height: 40,
            color: Colors.black,
            margin: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }

}