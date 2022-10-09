import 'package:flutter/material.dart';


const
MainColor = 0xFFf72323,
MainTextColor = 0xFF000000,
SideTextColor = 0xFFbfbfbf,
BackgroundColor = 0xFFededed;

// Актуальный месяц
final
NowDate = DateTime.now();
TakeNowDate (month) {
  final Map<int, String> listOfint = {
    1 : 'January',
    2 : 'February',
    3 : 'March',
    4 : 'April',
    5 : 'May',
    6 : 'June',
    7 : 'July',
    8 : 'August',
    9 : 'September',
    10 : 'October',
    11 : 'November',
    12 : 'December'
  };
  return listOfint[month].toString();
}

TakeCloserEvent () {
  // Сделать бд
  var EventDate = DateTime.parse('2023-01-24');
  var EventName = 'Egor\'s birthday';
  var CloserEvent = [
    EventDate.difference(NowDate).inDays.toString(),
    EventName.toString()
  ];
  return CloserEvent;
}