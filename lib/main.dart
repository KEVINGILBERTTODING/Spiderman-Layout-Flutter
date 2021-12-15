import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 4,
          title: Text(
            'Spider-Man',
            style: TextStyle(fontFamily: 'homoarak', fontSize: 15),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.red, Colors.black12])),
          ),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.wifi_sharp)),
            IconButton(onPressed: () {}, icon: Icon(Icons.stars))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              margin: EdgeInsets.only(bottom: 5),
              child: Image.asset('assets/images/spiderman.png'),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 5),
              child: Text(
                'Spider-Man',
                style: TextStyle(
                  fontFamily: 'homoarak',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                'No Way Home',
                style: TextStyle(
                    fontSize: 10, fontFamily: 'Locomotype', color: Colors.red),
              ),
            ),
            Container(
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white, fontSize: 11, fontFamily: 'sfpro'),
                  )),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Colors.red[900],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: new Icon(
                  Icons.mail,
                  color: Colors.red[900],
                ),
                label: 'Inbox'),
            BottomNavigationBarItem(
                icon: new Icon(
                  Icons.person,
                  color: Colors.red[900],
                ),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
