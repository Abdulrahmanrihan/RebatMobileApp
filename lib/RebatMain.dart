import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Meals.dart';

class MainPageStateful extends StatefulWidget{
  @override
  MainPage createState() => MainPage();
  }

class MainPage extends State<MainPageStateful>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ), onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              margin: EdgeInsets.only(bottom: 40.0),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image:
                        NetworkImage("https://via.placeholder.com/150")
                    ),
                ),
              ),
              accountName: new Container(
                  child: Text(
                    'Hazem Shreef',
                    style: TextStyle(color: Colors.black),
                  )),
              accountEmail: new Container(
                  child: Text(
                    'hazemshreef@gmail.com',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.orangeAccent,
              ),
              title: Text('Personal Information'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.orangeAccent,
              ),
              title: Text('My favourites'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.local_offer,
                color: Colors.orangeAccent,
              ),
              title: Text('Promotional Codes'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.orangeAccent,
              ),
              title: Text('FAQ'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.orangeAccent,
              ),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.orangeAccent,
              ),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: Container(
        color: Colors.white30,
        padding: EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Hi Hazem!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'What are you looking for?\n',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search',
                    ),
                    // ignore: missing_return
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'You have got to search something';
                      }
                    },
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 30,
                  width: 100,
                  child: Card(
                    color: Colors.orangeAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Locations',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.orangeAccent,
                ),
                Text(
                    '  Mokattam '
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.orangeAccent,
                ),
                InkWell(
                  child: Text(
                    "Giza",
                    style: TextStyle(
                      color:  Colors.black,
                    ),
                  ),
                  onTap: (){

                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                    'Type'
                ),
              ],
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 90,
                    width: 90,
                    child: Card(
                      color: Colors.orangeAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.cake,
                            color: Colors.white,
                          ),
                          Text(
                            'Cake',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    child: Card(
                      color: Colors.orangeAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.free_breakfast,
                            color: Colors.white,
                          ),
                          Text(
                            'Hot drink',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    child: Card(
                      color: Colors.orangeAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.local_drink,
                            color: Colors.white,
                          ),
                          Text(
                            'Drinks',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    child: Card(
                      color: Colors.orangeAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.streetview,
                            color: Colors.white,
                          ),
                          Text(
                            'Vegan',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    child: Card(
                      color: Colors.orangeAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.cake,
                            color: Colors.white,
                          ),
                          Text(
                            'Cake',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                    'Most Popular'
                ),
              ],
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Container(
                  height: 220,
                  width: 155,
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image(
                              height: 100,
                              width: 145,
                              image: AssetImage('assets/pasta.jpg'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Text(
                              'Pasta',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Icon(
                              Icons.location_on,
                              color: Colors.orangeAccent,
                              size: 12,
                            ),
                            Text(
                              ' 2.8 KM',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Icon(
                              Icons.timer,
                              size: 12,
                              color: Colors.orangeAccent,
                            ),
                            Text(
                              ' 20-34 min',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 1.0,
                                color: Colors.grey,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 4.0
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.grey,
                            ),
                            Text(
                              ' 4.5',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              '/5',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            IconButton(
                              iconSize: 25,
                              icon: Icon(
                                Icons.add_circle,
                                color: Colors.orangeAccent,
                              ),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PastaMeal()
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 220,
                  width: 155,
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image(
                              height: 100,
                              width: 145,
                              image: AssetImage('assets/moltenCake.jpg'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Text(
                              'Molten Cake',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Icon(
                              Icons.location_on,
                              color: Colors.orangeAccent,
                              size: 12,
                            ),
                            Text(
                              ' 1.8 KM',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Icon(
                              Icons.timer,
                              size: 12,
                              color: Colors.orangeAccent,
                            ),
                            Text(
                              ' 10-15 min',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 1.0,
                                color: Colors.grey,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 4.0
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.grey,
                            ),
                            Text(
                              ' 3.5',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              '/5',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            IconButton(
                              iconSize: 25,
                              icon: Icon(
                                Icons.add_circle,
                                color: Colors.orangeAccent,
                              ),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MoltenCake()
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
           ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
        ],
      ),
    );
  }
}