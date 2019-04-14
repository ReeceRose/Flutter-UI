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
        backgroundColor: Colors.white,
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
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.4),
                height: 100,
                color: Colors.white,
                child: Text(
                  'Get coaching',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 0.5,
                  //     color: Colors.grey,
                  //   )
                  // ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(25.0, 40.0, 0.0, 25.0),
                              child: Text(
                                '200',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                ),
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 25.0),
                              child: Icon(
                                Icons.favorite,
                                size: 30.0,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: backgroundGreen,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'Buy more',
                          style: TextStyle(
                            color: greenColour,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
