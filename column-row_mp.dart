import 'dart:math';

import 'package:flutter/material.dart';

class ColRowMP extends StatelessWidget{
  const ColRowMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ColRow"),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          color: Colors.grey,
          child: Column( 
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.up,
            children: [
              Container(
                color: Colors.black,
                height: 100,
                width: 100,
              ), 
              Container(
                color: Colors.white,
                height: 125,
                width: 125,
              ), 
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
              ), 
            ],),
        ),
      )
    );
  }
}
//horizontal: yatay(alt alta eleman dizer) 
//vertical  : dikey(yan yana eleman dizer)
//column: MainAxis=dikey  ,  CrossAxis: yatay 
//row:    MainAxis=yatay  ,  CrossAxis: dikey 
//
//column ve row CrossAxis'te minimum değere MainAxis'te maximum değere ulaşmak ister.
//mainAxisSize: MainAxisSize.min/max, ile bu default olay değiebilir.

//column veya row içindeki elemanların arasına boşlukvermek isteyebiliriz.
//mainAxisAlignment: MainAxisAlignment.end,
//mainAxisAlignment: MainAxisAlignment.start,
//mainAxisAlignment: MainAxisAlignment.center,
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//mainAxisAlignment: MainAxisAlignment.spaceAround,
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//
//crossAxisAlignment: CrossAxisAlignment.end,
//crossAxisAlignment: CrossAxisAlignment.start,
//crossAxisAlignment: CrossAxisAlignment.center,
//crossAxisAlignment: CrossAxisAlignment.strech,  --> cross olarak kaplayabileceği tüm yeri kaplar.
//crossAxisAlignment: CrossAxisAlignment.baseline,

//verticalDirection: VerticalDirection.down/up, -->yeni eklenen eleman üste mi alta mı eklenecek