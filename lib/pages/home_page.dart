import 'package:doc2/controllers/AppController.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fluterando"),
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.orange,
        child: Container(
          height: 10,
          width: 10,
          color: Colors.green,
          child: Center(
              child: Switch(
            value: AppController.instance.isDarkTheme,
            onChanged: (bool value) {
              AppController.instance.changeTheme();
            },
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
