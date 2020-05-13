import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'RebatMain.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

launchFaceURL() async {
  const url = 'https://facebook.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
launchTwitterURL() async {
  const url = 'https://twitter.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
launchInstURL() async {
  const url = 'https://instagram.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatefulWidget{
  @override
  LoginPage createState() => LoginPage();
}


class LoginPage extends State<MyApp> {
  bool clicked = false;
  final passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    routes: <String, WidgetBuilder>{
      'MainPage': (BuildContext context) => new MainPageStateful(),
    },
      home: Builder(
        builder: (context) =>Scaffold(
        body: new Container(
          color: Colors.white70,
          padding: EdgeInsets.all(20),
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      height: 130,
                      width: 150,
                      image: AssetImage('assets/Rebat.png'),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'A world where the food produced is all consumed',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Photographs',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(35.0),
                ),
                Form(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: <Widget>[
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                        ),
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(
                              passwordFocusNode);
                          },
                        ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                        keyboardType: TextInputType.number,
                        focusNode: passwordFocusNode,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(25.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.orange[800],
                      onPressed: () => Navigator.of(context).pushNamed('MainPage'),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      child: Text(
                        "Don\'t have an account? sign up here",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => null
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height:3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      child: Text(
                        "Want to Register as a Food buisness? Register here",
                        style: TextStyle(
                          color:  Colors.orangeAccent,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => null
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height:10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                      ),
                      onPressed: null,
                    ),
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.twitter,
                      ),
                      onPressed: null,
                    ),
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                      ),
                      onPressed: null,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

