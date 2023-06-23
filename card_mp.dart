import 'package:flutter/material.dart';

class CardMP extends StatelessWidget{
  const CardMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card"),
          centerTitle: true,
        ),

        body: Column(children: const [
          MyCustomWidget(message: "MERVE NUR ONAN", bgcolor: Colors.purple),
          MyCustomWidget(message: "Eyüp Kurtuluş", bgcolor: Colors.yellow)
        ],)
    );
  }
}

class MyCustomWidget extends StatelessWidget {
  final String message;
  final Color bgcolor;
  const MyCustomWidget({super.key, required this.message, required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      color: bgcolor,
      margin: const EdgeInsets.only(left: 20, top: 50),
      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: 120,
        width: 250,
        child: Center(child: Text(message)),
      ),
    );
  }
}
//köşeleri yuvarlak, dikdörtgen şeklindeki kutucuklara denir. basit mesajlar/bilgiler verilir.
//elevation: iki widget çakıştığında hangi widget'ın görüneceğine karar verir.
//elevation değeri yüksek olan çizilir.

//Card yapımı her yerde kullanabilmek için stateless widget yapacağım.
//Card'ı seçip "Ctrl + ." ile extract widget'a tıkladım, isimlendirdim ve hazırr..

// mesajı ve bgcolor'ı değiştirmek istiyorum. o halde MyCustomWidget'ta 2 özellik tanımlıyorum.
// named constructor'a yolluyorum.
// build()da uygun atamaları yapıyorum.
//en son widget'ı kullandığım yerden değer gönderiyorum..

//MaterialApp--theme: ThemeData.light().copywith(cardTheme: CardTheme(color: Colors.blue,)) ile
//Card'ın temasını default olarak belileyebiliriz.

//shape: const StadiumBorder(), --> stadyum şekli veriyor.
//shape: const CircleBorder(eccentricity: 0) --> sıfıra ne kadar yakınsa tam daire verir.[0,1] arası değer

