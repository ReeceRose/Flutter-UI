import 'package:flutter/material.dart';

import 'selected_photo.dart';

class FoodTruckDetailsPage extends StatefulWidget {
  @override
  _FoodTruckDetailsPageState createState() => _FoodTruckDetailsPageState();
}

class _FoodTruckDetailsPageState extends State<FoodTruckDetailsPage> {
  int photoIndex = 0;
  List<String> photos = [
    'https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1639565/pexels-photo-1639565.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
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
    const Color starColour = Color.fromARGB(255, 227, 108, 74);
    const Color greenColour = Color.fromARGB(255, 28, 120, 81);
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(photos[photoIndex]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                        color: Color.fromARGB(255, 245, 74, 118),
                        iconSize: 30.0,
                      )
                    ],
                  ),
                  GestureDetector(
                    child: Container(
                      height: 250.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                    onTap: _nextImage,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 250.0,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.transparent,
                    ),
                    onTap: _previousImage,
                  ),
                  Positioned(
                    top: 220.0,
                    left: 5.0,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: starColour,
                        ),
                        Icon(
                          Icons.star,
                          color: starColour,
                        ),
                        Icon(
                          Icons.star,
                          color: starColour,
                        ),
                        Icon(
                          Icons.star,
                          color: starColour,
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 123, 145, 158),
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          '4.0',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          width: 35.0,
                        ),
                        SelectedPhoto(
                          photoIndex: photoIndex,
                          numberOfDots: photos.length,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'OPEN UNTIL 7PM',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'The Cinnamon Snail',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 27.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '17th st & Union Sq East',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '400ft Away',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.wifi,
                          color: greenColour,
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          'Location confirmed by 3 users today',
                          style: TextStyle(
                            color: greenColour,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment(-0.85, 0),
                child: Text(
                  'FEATURED ITEMS',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              _buildListItem(
                'https://images.pexels.com/photos/1209029/pexels-photo-1209029.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                'Maple Mustard Tempeh',
                'Marinated kale, onion, tomato, and roasted garlic aioli on grilled spelt bread.',
                11.25,
              ),
              SizedBox(
                height: 15.0,
              ),
              _buildListItem(
                'https://images.pexels.com/photos/236487/pexels-photo-236487.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                'Gochujang Glazed Crispy Seitan',
                'With kimchi, pickled red onions, arugula, and sriracha mayo on a grilled pretzel bun',
                12.25,
              ),
              SizedBox(
                height: 15.0,
              ),
              _buildListItem(
                'https://images.pexels.com/photos/1209029/pexels-photo-1209029.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                'Maple Mustard Tempeh',
                'Marinated kale, onion, tomato, and roasted garlic aioli on grilled spelt bread.',
                11.25,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildListItem(String picture, String itemName, String itemDescription,
      double itemPrice) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(picture),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              height: 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    itemName,
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: 275.0,
                    child: Text(
                      itemDescription,
                      // overflow: TextOverflow.fade,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'Montserrat',
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '\$$itemPrice',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Montserrat',
                      // fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
