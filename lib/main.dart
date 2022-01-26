import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [
    Container(
      color: Color(0xfff6e58d),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/ls1.jpg'),
              radius: 100,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Text(' Library of Congress', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: 'Pacifico',color:Colors.blueAccent),),
                Text('The Library of Congress is the research library that officially serves the United States Congress and is the de facto national library of the United States.'
                    ' It is the oldest federal cultural institution in the United States.'),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xffdff9fb),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/ls2.jpg'),
              radius: 100,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Text('Shanghai Library', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: 'Pacifico'),),
                Text('The Shanghai Library, which also houses the Shanghai Institute of Scientific and Technological Information, is the municipal library of Shanghai, China. '
                    'It is the second largest library in China after the National Library in Beijing.'),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xffFD7272),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/ls3.jpg'),
              radius: 100,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Text('New York Public Library', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: 'Pacifico'),),
                Text('The New York Public Library (NYPL) is a public library system in New York City. With nearly 53 million items and 92 locations, '
                    'the New York Public Library is the second largest public library in the United States and the fourth largest in the world.'),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xfff6e58d),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/ls4.jpg'),
              radius: 100,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Text('Library and Archives Canada', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: 'Pacifico'),),
                Text('Library and Archives Canada is a federal institution tasked with acquiring, preserving'
                    ', and providing accessibility to the documentary heritage of Canada. '
                    'It is the fifth largest library in the world.'),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xffbadc58),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/ls5.jpg'),
              radius: 100,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Text('British Museum', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: 'Pacifico'),),
                Text('The British Museum is a public institution dedicated to human history, art and culture located in the Bloomsbury area of London, England.'
                    ' Its permanent collection of eight million works is among the largest and most comprehensive in existence.'),
              ],
            ),
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 600,
        enableSideReveal: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.arrow_forward,size:20,color: Colors.white,),
      ),
    );
  }
}

