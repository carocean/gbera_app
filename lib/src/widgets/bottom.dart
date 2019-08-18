import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GberaBottomNavigationBar extends StatefulWidget {
  int selectedIndex;
  void Function(int) onSelected;

  GberaBottomNavigationBar({this.selectedIndex, this.onSelected});

  @override
  State createState() {
    return _GberaBottomNavigationBarState();
  }
}

class _GberaBottomNavigationBarState extends State<GberaBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          title: Text('桌面'),
          icon: Icon(Icons.dashboard),
        ),
        BottomNavigationBarItem(
          title: Text('网流'),
          icon: Icon(Icons.all_inclusive),
        ),
        BottomNavigationBarItem(
          title: Text('地圈'),
          icon: Icon(Icons.add_location),
        ),
        BottomNavigationBarItem(
          title: Text('服务'),
          icon: Icon(Icons.business_center),
        ),
      ],
      currentIndex: widget.selectedIndex,
      type: BottomNavigationBarType.shifting,
      unselectedItemColor: Colors.black26,
      selectedItemColor: Colors.red,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      iconSize: 24,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      onTap: (index) {
        widget.onSelected(index);
      },
    );
  }
}