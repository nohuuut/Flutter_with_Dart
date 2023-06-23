import 'package:flutter/material.dart';

class IndicatorMP extends StatelessWidget{
  const IndicatorMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indicator"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(children:  [
           const CircularProgressIndicator(
            color: Colors.green,
            value: 0.5,
            backgroundColor: Colors.greenAccent,
            strokeWidth: 10,
           ),
           Container(
            margin: const EdgeInsets.only(top: 25),
            child: const LinearProgressIndicator(),
           ),
        ],),
      ),
    );
  }
}


//iki widget'ı birbirinden uzaklaştırmak için margin lazımdı. 2. widget'ı container ile sarmaladım.
//value parametresi [0,1] arası değer alır. 0.25/0.5/0.75/1 ile boyalı şekilde bekletebilirsin.
//kalan kısmı bgcolor ile tamamlarsın.
//strokeWidth halka kalınlığı
