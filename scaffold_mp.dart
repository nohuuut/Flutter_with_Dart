import 'package:flutter/material.dart';

//bu sayfayı çalıştırmak için 
//main.dart'a "import 'package:flutter_app1/views/scaffold_mp.dart';" eklenir.
//MaterialApp/home parametresine "ScaffoldMP()," eklenir.

class ScaffoldMP extends StatelessWidget{
  const ScaffoldMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold"),
        centerTitle: true,
      ),

      body: Text(
        "Text Widget",
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 50),
        ),

      backgroundColor: Colors.grey,

      //buton olusturmaya yarıyor  
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add_a_photo)
        ),

      //butonu hareket ettirmek için
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //BottomNavigationBar alt kısımda bir şeyler yapmayı sağlıyor.
      //BottomNavigationBar'ı SizedBox() ile sarmalayarak height özellği kazandırdık.
      //BottomNavigationBar'ın en önemli özelliği 'items: []'dır. Hangi menülerin listeleneceği belirlenir.
      //'items: []'a göndereceğim her widget BottomNavigationBarItem türünden olmalı.
      bottomNavigationBar: SizedBox(
        height: 150,
        child: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.contact_emergency_outlined), label: "Contacts"),
        BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: "Alarm")
        ]),
      ),

      //title: widget alır, (birden fazla yanyana widget için Row(childer:[..., ...,]) ile sarmala)/

      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color:Colors.blue),
              child: Text("Drawer Header"),            
            ),
            ListTile(
              title: Text("Item 1"),
              tileColor: Colors.yellow,
            ),
            /*ListTile(
              title: Text("Item 2"),
              tileColor: Colors.green,
            ),*/
            ListTile(
              leading: Icon(Icons.person),
              title: Text('John Doe'),
              subtitle: Text('Software Engineer'),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}