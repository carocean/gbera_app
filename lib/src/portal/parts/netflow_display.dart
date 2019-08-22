import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gbera_app/src/portal/widgets/headers.dart';
import 'package:gbera_framework/framework.dart';

class NetflowDisplay extends StatefulWidget {
  DisplayContext context;

  NetflowDisplay({this.context});

  @override
  _NetflowDisplayState createState() => _NetflowDisplayState();
}

class _NetflowDisplayState extends State<NetflowDisplay>
    with SingleTickerProviderStateMixin {
  int selectTabIndex;

  _NetflowDisplayState(){
    selectTabIndex=0;
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 210,
            floating: false,
            automaticallyImplyLeading: false,
            elevation: 0,
            title: getNetflowHeader(selectTabIndex: selectTabIndex,onTap: (index){
              setState(() {
                selectTabIndex=index;
              });
            }),
          ),
        ],
      ),
    );
  }
}
