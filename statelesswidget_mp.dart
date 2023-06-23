import 'package:flutter/material.dart';

class MyMessageWidget extends StatelessWidget{
  final String message;
  const MyMessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context){
    return Text(
      message,
      style:const TextStyle(color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}

class ContainerWidget extends StatelessWidget{
  final double edge;
  final Color bgcolor;
  const ContainerWidget({super.key, required this.edge, required this.bgcolor});

  @override
  Widget build(BuildContext context){
    return Container(
      height: edge,
      width: edge,
      margin: const EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(edge/2),
        color: bgcolor,
      ),
    );
  }
}

class StatelessWidgetMP extends StatelessWidget{
  const StatelessWidgetMP({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("StatelessWiget"),
          centerTitle: true,
        ),
        body: Column(children: const [
          MyMessageWidget(message: "hello medoş"),
          MyMessageWidget(message: "hello merve"),
          ContainerWidget(edge: 100, bgcolor: Colors.black,),
          ContainerWidget(edge: 50, bgcolor: Colors.black12,),
          ContainerWidget(edge: 20, bgcolor: Colors.orange,)
        ],)
    );
  }
}