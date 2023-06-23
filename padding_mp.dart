import 'package:flutter/material.dart';

class PaddingMP extends StatelessWidget{
  const PaddingMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Padding"),
          centerTitle: true,
        ),

        body: Container(
          color: Colors.pink,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.app_registration_outlined),
              //butonu hareket ettirmek istiyorum ama padding/margin özelliği yok.
              //O halde padding widget ile ElevatedButton'u sarmalıyorum.
              //ElevatedButton'ı seçip "ctrl + ." wrap with padding seçtim.
              //remove this widget seçersen, istediğin widgeti kaldırırsın.
            ),
            //padding mi margin mi kullanıldı? ayırt etmek için color özelliğini kullan.
            //fakat bu özellik Padding widget'ında yok. O halde container ile sarmala.
          ),
          //Container sarmaladığı widget'ın tam olarak kapsar.
          //color: ile padding mi /margin mi  kullanılmış anlaşılır.
        )
    );
  }
}

/*
EdgeInsets.zero --> widget sarmalanır, hiç boşluk bırakılmaz. = EdgeInsets.all(0)
EdgeInsets.all --> her yönden eş miktarda boşluk
EdgeInsets.fromLTRB --> left top right bottom saat yönünde boşluk bırak
EdgeInsets.symmetric(vertical/horizontal) --> ya alt/üst'ten ya da sağ/sol'dan eş boşluk
*/