import 'package:flutter/material.dart';

class SpotifyLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(17.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'Hello',
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(17.0, 175.0, 0.0, 0.0),
                  child: Text(
                    'There',
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(225.0, 175.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 3, 216, 90),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 35.0, 20.0, 0.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL ',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 0.0),
                  child: InkWell(
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 216, 90),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Container(
                  height: 55.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color.fromARGB(255, 3, 216, 90),
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 55.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: ImageIcon(
                            NetworkImage(
                                'https://freeiconshop.com/wp-content/uploads/edd/facebook-solid.png'),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Log in with Facebook',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'New to Spotify?',
              ),
              SizedBox(
                width: 5.0,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 216, 90),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
