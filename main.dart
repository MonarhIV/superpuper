import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List homeList = [];

  @override
  void initState() {
    super.initState();

    homeList.addAll(['Aaaaaaa', 'Bbbbbbb', 'Ccccccc']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Column(
        children: [

          Container(
            child: Center(
              child: Text('Birthdates'),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(15),
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xFFfc033d),
              borderRadius: BorderRadius.circular(30)
            ),
          ),
          
          Container(
            height: 30,
          ),

          Container(
            height: 40,
            child: Center(
              child: Text('Upcoming'),
            ),
          ),

          Container(
            height: 150,
          ),

          Container(
            height: 40,
            child: Center(
              child: Text('Discover'),
            ),
          ),

          Container(
            height: 170,
          )
        ],
      ),
    );
  }
}