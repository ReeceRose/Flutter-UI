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
          ),
          Positioned(
            width: 350.0,
            left: 25.0,
            top: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    // border: BoxShape.circle,
                    // borderRadius: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage('https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}