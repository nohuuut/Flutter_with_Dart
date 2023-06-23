import 'package:flutter/material.dart';

class PositionedMP extends StatelessWidget {
  const PositionedMP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Positioned"), centerTitle: true,),

      body: Column( children: [
        Expanded(
          flex: 2,
          child: Stack( 
            alignment: Alignment.center,
            children: [
            Positioned.fill(
              bottom: 75,
              child: Image.network("https://picsum.photos/1200/450"),
            ),
            const Positioned(
              width: 200,
              height: 50,
              bottom: 55,
              child: Card(
                color: Colors.white30,
                child: Center(child: Text("Position image")),
              ),
            ),
          ],
        ),
        ),
        const Spacer(
          flex: 3,
        )
      ],
      )
    );
  }
}

//positioned bir widget'ı Stack'teki diğer widgetlara göre konumladırmak için kullanılır.


//Stack ile Container arasındaki fark:
/*
Stack(children: [
        Container(
          color: Colors.green,
          height: 150,
        ),
        Container(
          color: Colors.deepOrange,
          height: 120,
          margin: const EdgeInsets.only(left: 20, top: 80,),
          //burda container'ı stack içinde istediğim gibi konumlandırabilirm.
          //fakat right: 60 ile sağda yeni bir wiget eklersem bu arada boşluk bırakacaktır.
          //positioned öyle değil. width değerine gerek duymadan right: 60 ile direkt konumlama yapar.
        ),
        Positioned(
          height: 90,
          left: 50,
          right: 50,
          //left ve right'a değer atadıysan width kullanma.
          top: 160,
          child: Container(
            color: Colors.blue,
            //height: 150,
            child: const Text("Poisoned widget"),
          ),
        ),
      ],
),
*/