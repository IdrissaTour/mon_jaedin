import 'package:flutter/material.dart';

class PagedeRealisation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Jardin ideal'),
      ),
      body: Center(
        child: Column(
          children: [
           Padding(padding: EdgeInsets.all(10),
           child:  Text('Nos réalisations',
             style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,
             color: Colors.greenAccent
             ),),
           )
          ],
        ),
      ),
    );
  }
}