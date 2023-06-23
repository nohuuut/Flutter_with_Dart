import 'package:flutter/material.dart';

class ExpandedMP extends StatelessWidget{
  const ExpandedMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
               color: Colors.pink,
            ) ,
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: Container(
               color: Colors.indigo,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.purple,
            ),
          ),
        ],
      )
    );
  }
}
//sahip olduğu yüksekliği [0,1] aralığında oranla paylaştırır. flex parametresi
//mainAxis'te hak talep ediyor.
//genişliği container sağlıyor.
//column: container burda height olarak işe yaramaz, expanded var.
//row: container burda width olarak işe yaramaz, expanded var.

//spacer child parametresi almaz, flex parametresi vardır.
//boş alan bırakmaya yarar