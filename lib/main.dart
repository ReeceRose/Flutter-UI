import 'package:flutter/material.dart';

import 'spotify_login/login.dart';
import 'profile_screen/profile.dart';

void main() => runApp(MaterialApp(
      title: 'Flutter UI',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => MyApp(),
        '/spotify_login': (context) => SpotifyLoginPage(),
        '/profile_screen': (context) => ProfileScreen(),
      },
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text('Spotify Login'),
              onPressed: () {
                Navigator.pushNamed(context, '/spotify_login');
              },
            ),
            RaisedButton(
              child: Text('Profile Screen'),
              onPressed: () {
                Navigator.pushNamed(context, '/profile_screen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
