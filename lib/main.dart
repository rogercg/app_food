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
      body: Column(
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
          )
          /* -- END BUTTONS CATEGORY -- */
        ],
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