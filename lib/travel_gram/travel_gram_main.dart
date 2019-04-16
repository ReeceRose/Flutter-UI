import 'package:flutter/material.dart';

class TravelGramMainPage extends StatefulWidget {
  @override
  _TravelGramMainPageState createState() => _TravelGramMainPageState();
}

class _TravelGramMainPageState extends State<TravelGramMainPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  final Color titleColour = Color.fromARGB(255, 87, 94, 106);
  final Color blueColour = Color.fromARGB(255, 84, 161, 255);
  final Color greyColour = Color.fromARGB(255, 169, 169, 169);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                color: Colors.grey.shade500,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.show_chart,
                color:Colors.grey.shade500,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.grey.shade500,
              ),
            ),
          ],
        ),
      ),
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'FROM THE COMMUNITY',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 17.0,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    color: blueColour,
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
          ),
          _builldImageGrid(context),
          _imageGalleryDetail(),
          _builldImageGrid(context),
          _imageGalleryDetail(),
        ],
      ),
    );
  }

  Widget _imageGalleryDetail() {
    return Padding(
      padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Maui Summer 2018',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Teressa Soto added 52 photos',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 11.0,
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.timer,
                    size: 4.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    '2h ago',
                    style:
                        TextStyle(color: Colors.grey.shade500, fontSize: 11.0),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Transform.rotate(
                angle: -0.9,
                child: Icon(
                  Icons.send,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(
                width: 7.0,
              ),
              Icon(
                Icons.message,
                color: Colors.grey.shade700,
              ),
              SizedBox(
                width: 7.0,
              ),
              Icon(
                Icons.favorite_border,
                color: Colors.grey.shade700,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _builldImageGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
      child: Container(
        height: 225.0,
        child: Row(
          children: <Widget>[
            Container(
              height: 225.0,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/457882/pexels-photo-457882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 2.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 111.5,
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.0),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/533923/pexels-photo-533923.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 111.5,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/237272/pexels-photo-237272.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      width: 150.0,
                      top: 80,
                      left: 65,
                      child: Text(
                        '+50',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
