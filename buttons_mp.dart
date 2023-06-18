import 'package:flutter/material.dart';

//2 temel özellik alır: onPressed:(){} , child: Widget,

class ButtonMP extends StatelessWidget{
  const ButtonMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          TextButton(
            onPressed:(){ print("Text Button is pressed");}, //butona tıklandığında console çıktısı verir.
            child: Text("Text Button 1", style: Theme.of(context).textTheme.labelLarge),
          ),

          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.brown,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: Colors.black, width: 3, strokeAlign: 3,)
                ),
            ),
            onPressed:() {},
            child: const Text("Text Button 2"),
          ),

          ElevatedButton(
            onPressed: (){}, 
            child: Text("Elevated Button"),
            style: const ButtonStyle(
              textStyle: MaterialStatePropertyAll(
                TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w600,
                ),
              ),
              backgroundColor: MaterialStatePropertyAll(Colors.green),
              foregroundColor: MaterialStatePropertyAll(Colors.black),
            ),
          ),

          IconButton(
            onPressed: (){}, 
            highlightColor: Colors.amber,
            icon: const Icon(
              Icons.access_time, 
              size:50,
              color: Colors.red,
            ),
          ),

          FloatingActionButton.large( //FloatingActionButton.small() da kullanılabilir.
            onPressed: (){},
            child: const Text("Add"), //icon: const Icon(Icons.ac_unit_sharp) widget olarak kullanılabilir.
          ),

          OutlinedButton(
            style: ButtonStyle(
              //backgroundColor: MaterialStatePropertyAll(Colors.red),  --> tek renk atayacaksak böyle
              //MaterialStateProperty.resolveWith((states) => null)
              //parametre olarak state alan ve geriye bir şey döndürmeyen bir fonksiyon alıyor.
              //butonun state'ini tutar. butona basılıyor mu? ne kadar süre basılı tutuldu?
              //bu bilgileri kullanarak buton rengini değiştireceğiz.
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              print(states);
              if (states.contains(MaterialState.focused)){
                return Colors.red;
              }
              else if (states.contains(MaterialState.pressed)){
                return Colors.orange;
              }
              return Colors.yellow;
            })),
            onPressed: (){print("Text Button is pressed");},
            onLongPress: (){print("Text Button is long pressed");},
            child: const Text("Outlined Button"),
          ),

          InkWell(
            onTap:() {
              print("Text on Tapped.");
            },
            onLongPress:() {
              print("Text on Long Press.");
            },
            child: const Text("InkWell"),
          )

        ],

      )
    );
  }
}

//TextButton.icon()'ı IconButton gibi kullanabiliriz.
//MaterialStateProperty ile state değişiminden renk ataması yapabiliriz.
//press özelliği olmayan bir widget'a press özelliği kazandıran yapı Inkwell/Getstur
//onTap:() {} ile basıldığında ne olmasın istiyorsak