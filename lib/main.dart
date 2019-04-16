import 'package:flutter/material.dart';

import 'travel_gram/travel_gram_main.dart';
import 'food_truck/details.dart';
import 'talent_hire/hire.dart';
import 'profile_screen/profile.dart';
import 'spotify_login/login.dart';

void main() => runApp(MaterialApp(
      title: 'Flutter UI',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => MyApp(),
        '/travel_gram': (context) => TravelGramMainPage(),
        '/food_truck': (context) => FoodTruckDetailsPage(),
        '/talent_hire': (context) => HirePage(),
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
              child: Text('Travelgram'),
              onPressed: () {
                Navigator.pushNamed(context, '/travel_gram');
              },
            ),
            RaisedButton(
              child: Text('Food Truck'),
              onPressed: () {
                Navigator.pushNamed(context, '/food_truck');
              },
            ),
            RaisedButton(
              child: Text('Talent Hire'),
              onPressed: () {
                Navigator.pushNamed(context, '/talent_hire');
              },
            ),
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
