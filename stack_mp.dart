import 'package:flutter/material.dart';

class StackMP extends StatelessWidget{
  const StackMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
        centerTitle: true,
      ),

      body: SizedBox(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              decoration:  BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.green.withAlpha(0),
                        Colors.green.shade200,
                        Colors.green.shade400]
                  )
              ),
              alignment: Alignment.bottomCenter,
              child: const Text("sizedBox stack container text"),
            ),
          ],),
      ),
    );
  }
}
// diğer widgetlardan en büyük farkı üst üste widge t basmasıdır.
//default olarak sol üst köşeden basmaya başlar.
//stack dae boyutlandırma yok ya sizedbox ile ya da container ile sarmala

//color: Colors.lightBlue.withOpacity(0.1),
//withOpacity [0,1] arası değer alır. 0: tamamen transparan, 1: tamamen opak
//widget'lar arka arkaya ya onu daha iyi anlarız.

//alignment: Alignment.center : widhetlar merkezden