import 'package:flutter/material.dart';

main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"First Flutter App",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: const FirstScreen(title: "Flutter Home Page"),
    );
  }
}

class FirstScreen extends StatefulWidget{

  const FirstScreen({super.key, required this.title});
  final String title;
  @override
  State <FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>{
  int _counter=0;
  void _incrementCounter(){
    setState((){
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text ("Push the Button:"),
            Text ("$_counter")]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}