import 'package:flutter/material.dart';

class ListTileMP extends StatelessWidget {
  const ListTileMP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListTile"),
        centerTitle: true,
      ),  

      body: Column(children: [
        ListTile(
          title: const Text("Merve Nur Onan"),
          subtitle: const Text("Computer Engineer"),
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.chevron_right),
          enabled: true,
          onTap: () {
            print("Pressed onTap.");
          },
        ),
        ListTile(
          title: const Text("Merve Nur Onan"),
          subtitle: const Text("Computer Engineer"),
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.chevron_right),
          enabled: true,
          onTap: () {
            print("Pressed onTap.");
          },
        ),
        ListTile(
          title: const Text("Merve Nur Onan"),
          subtitle: const Text("Computer Engineer"),
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.chevron_right),
          enabled: true,
          onTap: () {
            print("Pressed onTap.");
          },
        ),
      ],

      )    
    );
  }
}