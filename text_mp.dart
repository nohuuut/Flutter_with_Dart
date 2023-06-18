import 'package:flutter/material.dart';

//bu sayfayı çalıştırmak için 
//main.dart'a "import 'package:flutter_app1/views/text_mp.dart';" eklenir.
//MaterialApp/home parametresine "TextMP(contentMessage: "Hello from Text Widget")," eklenir.

class TextMP extends StatelessWidget{ //Widget extend etmenin 2 şartı vardır:
  final String contentMessage;
  const TextMP({super.key, required this.contentMessage});  //1- const constructor yazılır.

  @override
  Widget build(BuildContext context){ //2- build methodu return edilir.
    return Scaffold(
      body: Center(
        child: Text(contentMessage),
      )
    );
  }

}