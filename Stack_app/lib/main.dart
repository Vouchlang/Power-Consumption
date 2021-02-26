import 'package:flutter/material.dart';

void main() {
  runApp(MyHomepage());
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.fromLTRB(20, 50, 20, 20),
          height: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1, 1),
                  blurRadius: 5,
                ),
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(-1, -1),
                  blurRadius: 5,
                ),
              ]),
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1, 1),
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-1, -1),
                      blurRadius: 5,
                    ),
                  ]),
              child: Stack(alignment: Alignment.topCenter, children: [
                Positioned(
                  bottom: 10,
                  child: Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(1, 1),
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(-1, -1),
                          ),
                        ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Image.network(
                          'https://www.anime-planet.com/images/characters/zoro-roronoa-75.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1, 1),
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-1, -1),
                      blurRadius: 5,
                    ),
                  ]),
              child: Stack(alignment: Alignment.topCenter, children: [
                Positioned(
                  bottom: 10,
                  child: Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(1, 1),
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(-1, -1),
                          ),
                        ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Image.network(
                          'https://www.anime-planet.com/images/characters/zoro-roronoa-75.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
