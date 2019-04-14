import 'package:flutter/material.dart';

class FoodTruckDetailsPage extends StatefulWidget {
  @override
  _FoodTruckDetailsPageState createState() => _FoodTruckDetailsPageState();
}

class _FoodTruckDetailsPageState extends State<FoodTruckDetailsPage> {
  int photoIndex = 0;
  List<String> photos = [
    'https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1639565/pexels-photo-1639565.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'
  ];

  void _previousImage() {
    setState(() {
     photoIndex = photoIndex > 0 ? photoIndex - 1 : 0; 
    });
  }

  void _nextImage() {
    setState(() {
     photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}