import 'package:flutter/material.dart';

class TravelGramMainPage extends StatelessWidget {
  final Color titleColour = Color.fromARGB(255, 87, 94, 106);
  final Color blueColour = Color.fromARGB(255, 84, 161, 255);
  final Color greyColour = Color.fromARGB(255, 169, 169, 169);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'travel',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: titleColour,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.gps_fixed,
                  size: 16.0,
                  color: titleColour,
                ),
                Text(
                  'gram',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: titleColour,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 174.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                  color: greyColour,
                ),
                SizedBox(
                  width: 5.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              padding: EdgeInsets.only(
                left: 30.0,
              ),
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey.shade200,
              ),
              child: Row(
                children: <Widget>[
                  Transform.rotate(
                    angle: 0.75,
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: blueColour,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.navigation,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 27.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'MALDIVES TRIP 2018',
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'Add an update',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
