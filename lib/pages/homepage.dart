import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restart"),
      ),
      body: Container(
        child: Center(child: Text("hi")),
      ),
      drawer: Drawer(),
    );
  }
}
