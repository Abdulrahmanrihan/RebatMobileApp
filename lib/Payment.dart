import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Payment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        padding: EdgeInsets.all(42),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Your purchases',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13.0)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.indeterminate_check_box,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'X 1 Pasta (35 EGP)',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        height: 40,
                        width: 60,
                        image: AssetImage('assets/pasta.jpg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            Row(
              children: <Widget>[
                Text(
                  'Delivery and payment info',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13.0)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.payment,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Paypal',
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.orangeAccent,
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13.0)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.credit_card,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Credit Card',
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        width: 105,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.orangeAccent,
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(13.0)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.attach_money,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Cash',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.orangeAccent,
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Success()
            ),
          );
        },
        label: Text('Confirm Purchase'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.orangeAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You Order is placed successfully',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'It is expected to be ready in',
                ),
                Text(
                  ' 10 minutes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
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
                  'Thanks for choosing Rebat',
                  style: TextStyle(
                    color: Colors.orangeAccent
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}