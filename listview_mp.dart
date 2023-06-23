import 'package:flutter/material.dart';

class ListViewMP extends StatelessWidget {
  ListViewMP({super.key});
  final messages=["Ahmet Gökbeğen", "Ömer Çiğil ", "Eyup Kurtuluş"];
  final colorCodes=[200, 400, 600];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        centerTitle: true,
      ),  

      /*
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: messages.length,
        itemBuilder: (context, index) => Container(
          color: Colors.indigo[colorCodes[index]],
          height: 60,
          child: Text('Message($index) : ${messages[index]}'),
        ),
      ),
      */

      body: ListView.separated(
        itemBuilder: (context, index) => Container(
          color: Colors.indigo[colorCodes[index]],
          height: 60,
          child: Text('Message($index) : ${messages[index]}'),
        ), 
        separatorBuilder: (context, index) => const Divider(
          height: 30,
          thickness: BorderSide.strokeAlignCenter,
        ), 
        itemCount: messages.length,
      ),
    );
  }
}
//bir itemBuilder çalıştıktan sonra bir de separatorBuilder çalışır.

//Divider yerine SizedBox ya da Container da kullanılabilir.

//bir verinin listelenmesini sağlar.
/*
ListView.builder(
        padding: const EdgeInsets.all(15),
        itemBuilder: (context, index) => const Text("data"),
        itemCount: 3,
      ),
*/