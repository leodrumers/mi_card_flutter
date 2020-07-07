import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

const String fbImage =
    'https://scontent.fbog2-2.fna.fbcdn.net/v/t1.0-9/80715051_2912323972134312_3666735450292224000_o.jpg?_nc_cat=109&_nc_sid=09cbfe&_nc_eui2=AeHapZ2wTc6rf0m-E-cECGVCXcWxrCuIVU9dxbGsK4hVT2hzIhJw1eLbKU4un0GaMGbPt2cN7RTr5KwF5CfBM-AQ&_nc_oc=AQkxItDxc7o5iypbfIOWGHGLjH_UpvW9cPpAW7OwVX53ZOUHU5Nw9J4CprV7-5PXNMA&_nc_ht=scontent.fbog2-2.fna&oh=5d5bcc4cbbe40973c0dba4fc0685536e&oe=5F299FFE';

class _MyAppState extends State<MyApp> {
  Widget _sizedBox = SizedBox(
    height: 10.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(fbImage),
              backgroundColor: Colors.green,
            ),
            _sizedBox,
            Text(
              'Leodrumers',
              style: TextStyle(
                fontFamily: 'Galada',
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                fontFamily: 'Noto',
                color: Colors.white,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              elevation: 8.0,
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal.shade200,
                ),
                title: Text(
                  '+51 123 456 7890',
                  style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Noto',
                      fontSize: 16.0,
                      letterSpacing: 1.5),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal.shade200,
                ),
                title: Text(
                  'leodrumers@gmail.com',
                  style: TextStyle(
                    color: Colors.teal,
                    fontFamily: 'Noto',
                    fontSize: 16.0,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
