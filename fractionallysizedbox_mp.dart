import 'package:flutter/material.dart';

//genişlik yükseklik kullanmadan orantısal değer vermek için kullanırız.
//widthFactor genişliğin ne kadarını kullanayım
//heightFactor yükseklin ne kadarını kullanayım

class FractionallySizedboxMP extends StatelessWidget{
  const FractionallySizedboxMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fractionally Sizedbox Sample"),
        centerTitle: true,
      ),

    body: FractionallySizedBox(
      widthFactor: 0.5,
      heightFactor: 0.4,
      child: Container(color: Colors.blueAccent),
    ),

    );
  }
}