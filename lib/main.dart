import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  var index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Flutter App",style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        color: Colors.deepOrange,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thisis just a demo app',
            style: TextStyle(
              color: Colors.white,
            ),)
          ],
        ),

      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.deepOrange,
        buttonBackgroundColor: Colors.white,
        height: 50,
        items: [
        Icon(Icons.verified_user,size: 20,color: Colors.black,),
        Icon(Icons.add,size: 20,color: Colors.black,),
        Icon(Icons.list,size: 20,color: Colors.black,),
          Icon(Icons.favorite,size: 20,color: Colors.black,),
          Icon(Icons.exit_to_app,size: 20,color: Colors.black,),
        ],
      animationDuration: Duration(
        milliseconds: 200,
      ),
      index: 2,
      animationCurve: Curves.bounceInOut,
      onTap: (endex){
        debugPrint("Current  Index is $index");
      },),
    );
  }
}
