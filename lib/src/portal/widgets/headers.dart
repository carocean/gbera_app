import 'package:flutter/material.dart';

getNetflowHeader({int selectTabIndex, void Function(int tabindex) onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 2,
          bottom: 2,
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
        child: GestureDetector(
          onTap: () {
            onTap(0);
          },
          child: Text(
            '管道',
            style: TextStyle(
              fontSize: 14,
              color: selectTabIndex == 0 ? Colors.white : Colors.blue,
            ),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 2,
          bottom: 2,
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
        child: GestureDetector(
          onTap: () {
            onTap(1);
          },
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
