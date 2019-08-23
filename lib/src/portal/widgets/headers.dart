import 'package:flutter/material.dart';

getNetflowHeader({int selectTabIndex, void Function(int tabindex) onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      GestureDetector(
        onTap: () {
          onTap(0);
        },
        child: Container(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 4,
            bottom: 6,
          ),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 0, color: Colors.blue),
              left: BorderSide(width: 1, color: Colors.blue),
              top: BorderSide(width: 1, color: Colors.blue),
              bottom: BorderSide(width: 1, color: Colors.blue),
            ),
            color: selectTabIndex == 0 ? Colors.blue : Colors.white,
          ),
//        color: selectTabIndex == 0 ? Colors.blue : Colors.white,
          child: Text(
            '管道',
            style: TextStyle(
              fontSize: 14,
              color: selectTabIndex == 0 ? Colors.white : Colors.blue,
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          onTap(1);
        },
        child: Container(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 4,
            bottom: 6,
          ),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 1, color: Colors.blue),
              left: BorderSide(width: 0, color: Colors.blue),
              top: BorderSide(width: 1, color: Colors.blue),
              bottom: BorderSide(width: 1, color: Colors.blue),
            ),
            color: selectTabIndex == 1 ? Colors.blue : Colors.white,
          ),
//        color: selectTabIndex == 1 ? Colors.blue : Colors.white,
          child: Text(
            '平面',
            style: TextStyle(
              fontSize: 14,
              color: selectTabIndex == 1 ? Colors.white : Colors.blue,
            ),
          ),
        ),
      ),
    ],
  );
}
