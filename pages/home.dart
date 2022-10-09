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

      backgroundColor: Color(BackgroundColor),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // Заголовок 'Дни рождения'
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Center(
                child: Text('Birthdates', style: TextStyle(
                    fontSize: 15,
                    color: Color(MainTextColor),
                    fontWeight: FontWeight.bold

                ),),
              ),
            ),

            // Ближайшее событие
            Container(
              margin: const EdgeInsets.all(15),
              height: 120,
              decoration: BoxDecoration(
                  color: Color(MainColor),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                child: Text(TakeCloserEvent()[0] + ' Days before ' + TakeCloserEvent()[1]),
              ),
            ),

            // Месяц
            Container(
              height: 20,
              child: Center(
                child: Text(TakeNowDate(NowDate.month), style: TextStyle(
                  fontSize: 15,
                  color: Color(SideTextColor),

                ),),
              ),
            ),

            // 'Upcoming'
            Container(
              height: 30,
              child: Center(
                child: Text('Upcoming', style: TextStyle(
                    fontSize: 15,
                    color: Color(MainTextColor),
                    fontWeight: FontWeight.bold

                ),),
              ),
            ),

            // Список событий
            Container(
                height: 300,
                color: Color(BackgroundColor),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          height: 280,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              PageView.builder(
                                itemCount: 3,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, inf) => Container(
                                    height: 150,
                                    width: 400,
                                    margin: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 100,
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          height: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                        )
                                      ],
                                    )
                                ),
                              ),
                            ],
                          )
                      )
                    ],
                  ),
                )
            ),
            // 'Discover'
            Container(
              height: 40,
              child: Center(
                child: Text('Discover', style: TextStyle(
                    fontSize: 15,
                    color: Color(MainTextColor),
                    fontWeight: FontWeight.bold

                ),),
              ),
            ),

            // Что-то
            Container(
              height: 450,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 450,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          PageView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal, itemBuilder: (context, inf) => Container(
                              height: 400,
                              width: 400,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Container(
                                    height: 300,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                  ),
                                ],
                              )
                          ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )

    );
  }
}