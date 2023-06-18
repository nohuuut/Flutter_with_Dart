import 'package:flutter/material.dart';

//özelliği var olan bütün boşluğu kaplamasıdır.
//width height özelliği verebiliriz. ve hatta bir aralık verebiliriz, bunun için constraints kullanırız.
//BoxConstraints ile max/min width height ataması yapabiliriz. 

class ContainerMP extends StatelessWidget{
  const ContainerMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
        centerTitle: true,
      ),

      body: Container(
        constraints: const BoxConstraints(minHeight: 100, maxHeight: 200, minWidth: 100, maxWidth: 200,),
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.only(left:10, right:10, top:20, bottom: 20),
        decoration: const BoxDecoration(
          //color: Colors.black, 
          shape: BoxShape.rectangle,
          //borderRadius: BorderRadius.all(Radius.circular(10)),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          gradient: LinearGradient(colors: [Colors.pink, Colors.purple])
          ),
         ),
        //child: Text("Container Message"*4),     
    );
  }
}

