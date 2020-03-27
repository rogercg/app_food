import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Food',
      theme: ThemeData(),
      home: MyMainPage(),
    );
  }
}

class MyMainPage extends StatefulWidget {
  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /* -- OP APP BAR INFO -- */
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:25.0, top: 70.0, right: 25.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Hi, Kevin!", style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),),
                      Row(
                        children: <Widget>[
                          Text("YOU ARE IN", style: TextStyle(color: Colors.grey),),
                          SizedBox(width: 5.0,),
                          Text("54 KING PORTS", style: TextStyle(color: Colors.pink),),
                          SizedBox(width: 5.0,),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.search, color: Colors.grey,)
                ],
              ),
            ),
            /* -- OP BUTTONS CATEGORY -- */
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          color: Colors.green.withOpacity(0.1),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Image.asset('assets/chicken.png', width: 40.0, height: 40.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text('CHICKEN', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          color: Colors.red.withOpacity(0.1),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Image.asset('assets/burger.png', width: 40.0, height: 40.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text('BURGER', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          color: Colors.orange.withOpacity(0.1),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Image.asset('assets/fish.png', width: 40.0, height: 40.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text('FISH', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          color: Colors.purple.withOpacity(0.1),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Image.asset('assets/meat.png', width: 40.0, height: 40.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text('MEAT', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            ),
            /* -- END BUTTONS CATEGORY -- */
            /* -- OP POPULAR FOODS -- */
            SizedBox(height: 15.0),
            Divider(),
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                children: <Widget>[
                  Text('Popular Foods', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30)),
                  Spacer(),
                  Text('See All', style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 185.0,
                        width: 175.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/seafood.jpeg')
                          ),
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 10.0,
                              bottom: 10.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('SEA FOOD', style: TextStyle(color: Colors.white)),
                                  SizedBox(height: 5.0),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.white.withOpacity(0.5)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0, left: 10.0, right: 10.0),
                                      child: Row(
                                        children: <Widget>[
                                          Text('4.8', style: TextStyle(color: Colors.white)),
                                          SizedBox(width: 3.0),
                                          Icon(Icons.star_border, color: Colors.white)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        height: 185.0,
                        width: 175.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/seafood.jpeg')
                          ),
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 10.0,
                              bottom: 10.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('SEA FOOD', style: TextStyle(color: Colors.white)),
                                  SizedBox(height: 5.0),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.white.withOpacity(0.5)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0, left: 10.0, right: 10.0),
                                      child: Row(
                                        children: <Widget>[
                                          Text('4.8', style: TextStyle(color: Colors.white)),
                                          SizedBox(width: 3.0),
                                          Icon(Icons.star_border, color: Colors.white)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Spacer(), 
                  Column(
                    children: <Widget>[
                      Container(
                        height: 185.0,
                        width: 175.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/seafood.jpeg')
                          ),
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 10.0,
                              bottom: 10.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('SEA FOOD', style: TextStyle(color: Colors.white)),
                                  SizedBox(height: 5.0),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.white.withOpacity(0.5)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0, left: 10.0, right: 10.0),
                                      child: Row(
                                        children: <Widget>[
                                          Text('4.8', style: TextStyle(color: Colors.white)),
                                          SizedBox(width: 3.0),
                                          Icon(Icons.star_border, color: Colors.white)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        height: 185.0,
                        width: 175.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/seafood.jpeg')
                          ),
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 10.0,
                              bottom: 10.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('SEA FOOD', style: TextStyle(color: Colors.white)),
                                  SizedBox(height: 5.0),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.white.withOpacity(0.5)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0, left: 10.0, right: 10.0),
                                      child: Row(
                                        children: <Widget>[
                                          Text('4.8', style: TextStyle(color: Colors.white)),
                                          SizedBox(width: 3.0),
                                          Icon(Icons.star_border, color: Colors.white)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
            /* -- END POPULAR FOODS -- */
          ],
        ),
      ),
      /* -- END BAR INFO -- */
      /* -- OP BOTTOM BAR -- */
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0)
          ),
          color: Colors.green
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.home, color: Colors.black),
              Icon(Icons.favorite_border, color: Colors.white),
              Icon(Icons.card_travel, color: Colors.white),
              Icon(Icons.person, color: Colors.white),
            ],
          ),
        ),
      ),
      /* -- END BOTTOM BAR -- */
    );
  }
}