import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarMP extends StatelessWidget{
  const AppBarMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 1,
        leading: IconButton(
          onPressed: () { print("Go Back.");},
          icon: const Icon(Icons.chevron_left),
        ),
        leadingWidth: 20,
        title: const Text("AppBar"),
        centerTitle: true,
        actions: [
          const Center(child: Text("Data")),
          IconButton( onPressed: (){}, icon: const Icon(Icons.messenger_sharp)),
          IconButton( onPressed: (){}, icon: const Icon(Icons.add_a_photo_sharp)),
          const CircularProgressIndicator(color: Colors.purple,)
        ],
        systemOverlayStyle: const SystemUiOverlayStyle(systemNavigationBarColor: Colors.purple,),
      ),
    );
  }
}
//automaticallyImplyLeading: false, //leading navigatorı default olarak kaldırır.

/*
    return MaterialApp(
      title:"First Flutter App",
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          toolbarTextStyle: TextStyle(color: Colors.deepPurple, decoration: TextDecoration.underline),
          actionsIconTheme: IconThemeData(color: Colors.deepPurple, size: 25,)
        )
      ),
      home: const AppBarMP(),
    );  
*/