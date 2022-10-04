import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app/pages/home_sub.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Column(
        children: [

          // Заголовок 'Дни рождения'
          Container(
            child: Center(
              child: Text('Birthdates', style: TextStyle(fontFamily: ''),),
            ),
          ),

          // Ближайшее событие
          Container(
            margin: const EdgeInsets.all(15),
            height: 150,
            decoration: BoxDecoration(
              color: Color(MainColor),
              borderRadius: BorderRadius.circular(30)
            ),
          ),

          // Месяц
          Container(
            height: 30,
            child: Center(
              child: Text(TakeNowDate(NowDate.month)),
            ),
          ),

          // 'Upcoming'
          Container(
            height: 40,
            child: Center(
              child: Text('Upcoming'),
            ),
          ),

          // Список событий
          Container(
            height: 150,
          ),

          // 'Discover'
          Container(
            height: 40,
            child: Center(
              child: Text('Discover'),
            ),
          ),

          // Что-то
          Container(
            height: 170,
          )
        ],
      ),
    );
  }
}