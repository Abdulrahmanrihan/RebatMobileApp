import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Payment.dart';


class PastaMeal extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  width: 300,
                  height: 310,
                  image: AssetImage('assets/pasta.jpg'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Pasta Meal',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '70',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  '  35 EGP',
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  ' per one',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal
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
                Text(
                  '4.5',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star_half,
                  color: Colors.yellow,
                  size: 14,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 70,
              width: 350,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Add Number',
                ),
                // ignore: missing_return
                validator: (String value) {
                  if (value.trim().isEmpty) {
                    return 'You have got to search something';
                  }
                },
              ),
            ),
            Container(
              height: 70,
              width: 350,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Special Requests',
                  hintText: 'Add Comment (eg. Extra sauce)',
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
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Payment()
            ),
          );
        },
        label: Text('Save meal'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.orangeAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
class MoltenCake extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  width: 300,
                  height: 310,
                  image: AssetImage('assets/moltenCake.jpg'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Molten Cake',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '40',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  '  20 EGP',
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  ' per one',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal
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
                Text(
                  '3.5',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star_half,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.yellow,
                  size: 14,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 70,
              width: 350,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Add Number',
                ),
                // ignore: missing_return
                validator: (String value) {
                  if (value.trim().isEmpty) {
                    return 'You have got to search something';
                  }
                },
              ),
            ),
            Container(
              height: 70,
              width: 350,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Special Requests',
                  hintText: 'Add Comment (eg. Extra sauce)',
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
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('Save meal'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.orangeAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}