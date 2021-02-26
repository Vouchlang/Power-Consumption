import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int color;
  int color1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: ListView(children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ]),
            ],
          ),
        ),
        Container(
          child: Center(
            child: Image.network(
              'https://i.ytimg.com/vi/1Ne1hqOXKKI/maxresdefault.jpg',
              fit: BoxFit.cover,
            ),
          ),
//            width:550,
          height: 150,
          margin: EdgeInsets.all(10),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomRight,
                height: 30,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(1, 1),
                      blurRadius: 3,
                      spreadRadius: 3,
                    ),
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(-1, -1),
                      blurRadius: 3,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffix: Icon(
                        Icons.search,
                        color: Colors.green[700],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myLv.length,
                    itemBuilder: (context, index) {
                      final Lv myLV1 = myLv[index];
                      return FlatButton(
                        onPressed: () {
                          setState(() {
                            color = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          width: 90,
                          decoration: BoxDecoration(
                            color: color == index ? Colors.green : Colors.grey,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                // margin: EdgeInsets.symmetric(vertical: 2),
                                alignment: Alignment.bottomCenter,
                                child: Icon(
                                  myLV1.icon,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  myLV1.text,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.5, 0.5),
                      blurRadius: 0.5,
                      spreadRadius: 0.5,
                    ),
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-0.5, -0.5),
                      blurRadius: 0.5,
                      spreadRadius: 0.5,
                    ),
                  ],
                ),
                child: Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: myLv2.map((index) {
                      return Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(
                                index.icon,
                                color: Colors.green[700],
                                size: 35,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Text(
                                index.text,
                                style: TextStyle(
                                  color: Colors.green[700],
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
//             Container(
//                 margin: EdgeInsets.all(20),
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey,
//                       offset: Offset(0.5,0.5),
//                       blurRadius: 0.5,
//                       spreadRadius: 0.5,
//                     ),
//                     BoxShadow(
//                       color: Colors.grey,
//                       offset: Offset(-0.5,-0.5),
//                       blurRadius: 0.5,
//                       spreadRadius: 0.5,
//                     ),
//                   ],
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       child: Row(
//                         children: [
//                           Container(
//                             margin: EdgeInsets.fromLTRB(0,0,5,0),
//                             child: Icon(Icons.mail,
//                             size: 40,
//                             color: Colors.green[700],
//                             ),
//                             ),
//                           Container(
//                             margin: EdgeInsets.fromLTRB(0,0,20,0),
//                             child: Text('50 %',
//                                style: TextStyle(
//                                  color: Colors. green[700],
//                                  fontSize:20,
//                                ),
//                             ),
//                           ),
//                         Container(
//                             margin: EdgeInsets.fromLTRB(0,0,5,0),
//                             child: Icon(Icons.wb_cloudy,
//                             size: 40,
//                             color: Colors.green[700],
//                             ),
//                             ),
//                           Container(
//                             margin: EdgeInsets.fromLTRB(0,0,20,0),
//                             child: Text('75 %',
//                                style: TextStyle(
//                                  color: Colors. green[700],
//                                  fontSize:20,
//                                ),
//                             ),
//                             ),
//                          Container(
//                             margin: EdgeInsets.fromLTRB(0,0,5,0),
//                             child: Icon(Icons.wb_sunny,
//                             size: 40,
//                             color: Colors.green[700],
//                                         ),
//                             ),
//                           Container(
//                             child: Text('100 %',
//                                style: TextStyle(
//                                  color: Colors. green[700],
//                                  fontSize:20,
//                                ),
//                             ),
//                          ),
//                       ],
//                       ),
//                     ),
//                   ],
//                   ),
//                 ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(0.5, 0.5),
                      blurRadius: 0.5,
                      spreadRadius: 0.5,
                    ),
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(-0.5, -0.5),
                      blurRadius: 0.5,
                      spreadRadius: 0.5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Power Comsumption:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Khmer MEF2',
                        ),
                      ),
                    ),
                    Container(
                      height: 250,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: house.length,
                          itemBuilder: (context, index) {
                            final House myHouse = house[index];
                            return Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: myHouse.color,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[300],
                                    offset: Offset(0.5, 0.5),
                                    blurRadius: 0.5,
                                    spreadRadius: 0.5,
                                  ),
                                  BoxShadow(
                                    color: Colors.grey[300],
                                    offset: Offset(-0.5, -0.5),
                                    blurRadius: 0.5,
                                    spreadRadius: 0.5,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Image.network(myHouse.image,
                                        fit: BoxFit.fitHeight),
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                    height: 100,
                                    width: 175,
                                  ),
                                  Container(
                                    child: Text(
                                      myHouse.text,
                                      style: TextStyle(
                                        fontFamily: 'Khmer MEF2',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Text(
                                            myHouse.numb,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey[900],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Icon(myHouse.icon,
                                              color: Colors.yellow),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Icon(
                                      myHouse.icon1,
                                      color: Colors.green,
                                    ),
                                    margin: EdgeInsets.fromLTRB(180, 0, 0, 0),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Container(
                      height: 100,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: myLv3.length,
                          itemBuilder: (context, index) {
                            final Lv3 myL3 = myLv3[index];
                            return FlatButton(
                              onPressed: () {
                                setState(() {
                                  color1 = index;
                                });
                              },
                              child: Container(
                                width: 150,
                                margin: EdgeInsets.symmetric(vertical: 5),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: myL3.color,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.5, 0.5),
                                      blurRadius: 0.5,
                                      spreadRadius: 0.5,
                                    ),
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(-0.5, -0.5),
                                      blurRadius: 0.5,
                                      spreadRadius: 0.5,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Icon(
                                            myL3.icon1,
                                            size: 25,
                                            color: Colors.green[700],
                                          ),
                                        ),
                                        Container(
                                          child: Icon(
                                            myL3.icon2,
                                            size: 8,
                                            color: color1 == index
                                                ? Colors.red
                                                : Colors.green[700],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Text(
                                        myL3.text1,
                                        style: TextStyle(
                                          fontSize: 8,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        myL3.text2,
                                        style: TextStyle(
                                          fontSize: 6,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class test {
  String tex;
  String image;
  Color col;
  test({this.tex, this.image, this.col});
}

List<test> myTest = [
  test(
      tex: 'Blue',
      image:
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*',
      col: Colors.blue),
  test(
      tex: 'Salmon',
      image:
          'https://i.guim.co.uk/img/media/fe1e34da640c5c56ed16f76ce6f994fa9343d09d/0_174_3408_2046/master/3408.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=0d3f33fb6aa6e0154b7713a00454c83d',
      col: Color(0xFFdca68d)),
  test(
      tex: 'Sla',
      image:
          'https://media.nature.com/lw800/magazine-assets/d41586-020-01430-5/d41586-020-01430-5_17977552.jpg',
      col: Color(0xFF893300)),
  test(
      tex: 'Dark Pink',
      image:
          'https://www.cdc.gov/healthypets/images/pets/cute-dog-headshot.jpg',
      col: Color(0xFFff00bf)),
  test(
      tex: 'Sea',
      image:
          'https://static.toiimg.com/thumb/msid-60132235,imgsize-169468,width-800,height-600,resizemode-75/60132235.jpg',
      col: Color(0xFF00ffff)),
];

class Lv {
//     String col;
  IconData icon;
  String text;
  Lv({this.icon, this.text});
}

List myLv = [
  Lv(icon: Icons.home, text: 'Home'),
  Lv(icon: Icons.access_alarms, text: 'Alarm'),
  Lv(icon: Icons.place, text: 'Place'),
  Lv(icon: Icons.web, text: 'Web'),
  Lv(icon: Icons.work, text: 'Work'),
  Lv(icon: Icons.wifi, text: 'Wifi'),
  Lv(icon: Icons.bookmark, text: 'Bookmark'),
];

class Lv2 {
  IconData icon;
  String text;
  Lv2({this.icon, this.text});
}

List myLv2 = [
  Lv2(icon: Icons.wb_iridescent_outlined, text: '50 %'),
  Lv2(icon: Icons.wb_sunny_outlined, text: '75 %'),
  Lv2(icon: Icons.wb_incandescent_outlined, text: '100 %'),
];

class House {
  Color color;
  String image;
  String text;
  String numb;
  IconData icon;
  IconData icon1;
  House({this.color, this.image, this.text, this.numb, this.icon, this.icon1});
}

List house = [
  House(
      color: Colors.white,
      image:
          'https://images-na.ssl-images-amazon.com/images/I/71a%2BGOb1izL.png',
      text: 'Television',
      numb: '20 kw',
      icon: Icons.flash_on,
      icon1: Icons.arrow_forward_ios),
  House(
      color: Colors.white,
      image:
          'https://productimages.mybobs.com/fit-in/624x0/sp/20031533/20031533_hero_wide.jpg',
      text: 'Bed Room',
      numb: '57 kw',
      icon: Icons.flash_on,
      icon1: Icons.arrow_forward_ios),
  House(
      color: Colors.white,
      image:
          'https://i-cdn.phonearena.com/images/articles/358993-xgallery/iPhone-12-Pro-Max-8.png',
      text: 'Phone',
      numb: '31 kw',
      icon: Icons.flash_on,
      icon1: Icons.arrow_forward_ios),
  House(
      color: Colors.white,
      image:
          'https://www.pngkit.com/png/full/114-1147752_house-png-house-with-transparent-background.png',
      text: 'House',
      numb: '257 kw',
      icon: Icons.flash_on,
      icon1: Icons.arrow_forward_ios),
  House(
      color: Colors.white,
      image:
          'https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=1500&h=1000&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F23%2F2009%2F06%2F17%2Fdabito-living-room.png',
      text: 'Living Room',
      numb: '107 kw',
      icon: Icons.flash_on,
      icon1: Icons.arrow_forward_ios),
];

class Lv3 {
  Color color;
  IconData icon1;
  IconData icon2;
  String text1;
  String text2;
  Lv3({this.color, this.icon1, this.icon2, this.text1, this.text2});
}

List myLv3 = [
  Lv3(
      color: Colors.white,
      icon1: Icons.attractions,
      icon2: Icons.brightness_1,
      text1: 'Powerwall',
      text2: 'Power'),
  Lv3(
      color: Colors.white,
      icon1: Icons.contact_support_rounded,
      icon2: Icons.brightness_1,
      text1: 'Infinity Power',
      text2: 'Infinity'),
];
