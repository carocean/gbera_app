import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gbera_framework/framework.dart';

import 'widgets/bottom.dart';

class PortalDisplay extends StatefulWidget {
  var appBar;
  var body;
  DisplayContext context;
  void Function(int) onSelected;

  PortalDisplay({this.context});

  @override
  _PortalDisplayState createState() => _PortalDisplayState();
}

class _PortalDisplayState extends State<PortalDisplay> {
  int selectedIndex = 0;
  var parts = [];

  @override
  void initState() {
    var desktop = widget.context.displayPart('gbera://desktop.page');
    parts.add(desktop);
    parts.add(Text('b'));
    parts.add(Text('c'));
    parts.add(Text('d'));
    parts.add(Text('e'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(selectedIndex);
    return Scaffold(
      appBar: AppBar(
        title: Text('金证时代'),
        titleSpacing: 10,
        centerTitle: false,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            // Use the FontAwesomeIcons class for the IconData
            icon: new Icon(Icons.crop_free),
            onPressed: () {
              print("Pressed");
            },
          ),
          IconButton(
            // Use the FontAwesomeIcons class for the IconData
            icon: new Icon(Icons.apps),
            onPressed: () {
              print("Pressed");
            },
          ),
        ],
      ),
      body: parts[selectedIndex],
      bottomNavigationBar: GberaBottomNavigationBar(
        selectedIndex: selectedIndex,
        onSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
