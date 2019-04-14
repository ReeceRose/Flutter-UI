import 'package:flutter/material.dart';

class HirePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Color greenColour = Color.fromARGB(255, 46, 194, 105);
    const Color backgroundGreen = Color.fromARGB(255, 233, 248, 239);
    return Scaffold(
      appBar: new AppBar(
        title: new IconButton(
          onPressed: () {},
          color: greenColour,
          icon: Icon(Icons.gesture),
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            color: Colors.grey,
            icon: Icon(Icons.menu),
          )
        ],
      ),
    );
  }
}
