import 'package:flutter/material.dart';

import 'get_clipper.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // body: Text('Here'),
      body: new Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              color: Colors.black.withOpacity(0.8),
            ),
            clipper: GetClipper(),
          )
        ],
      ),
    );
  }
}