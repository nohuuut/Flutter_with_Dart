import 'package:flutter/material.dart';

//bu sayfayı çalıştırmak için 
//main.dart'a "import 'package:flutter_app1/views/sizedbox_mp.dart';" eklenir.
//MaterialApp/home parametresine "SizedBoxMP()," eklenir.

class SizedBoxMP extends StatelessWidget{
  const SizedBoxMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("SizedBox Sample"),
        centerTitle: true,
        //2 widget arasında belirgin bir boşluk olmasını istersek
        ),

      //body: SizedBox(width: 150, height: 150, child: Text("Message"*4), ), --> bilindik kullanım 
      //200x200 lik kare tanımlaması/kısayol, fakat burada SizedBox'a arkaplan rengi atayamıyorum.
      //burada devreye Container() yapısı giriyor. Container SizedBox'tan daha gelişmiş bir widget'tır.
      body: SizedBox.square(  
        dimension:200,
        child: Container(
          color: Colors.blueGrey,
          )
        ), 
 
    );
  }
}
