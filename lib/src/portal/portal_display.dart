import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gbera_framework/framework.dart';

import 'widgets/bottoms.dart';

class PortalDisplay extends StatefulWidget {
  DisplayContext context;

  PortalDisplay({this.context});

  @override
  _PortalDisplayState createState() => _PortalDisplayState();
}

class _PortalDisplayState extends State<PortalDisplay> {
  int selectedIndex = 0;
  var parts = [];

  @override
  void initState() {
    super.initState();
    parts.add(widget.context.displayPart('gbera://desktop.page'));
    parts.add(widget.context.displayPart('gbera://netflow.page'));
    parts.add(Text('c'));
    parts.add(Text('d'));
    parts.add(Text('e'));

  }

  @override
  Widget build(BuildContext context) {
    print(selectedIndex);
    return Scaffold(
//      appBar: headers[selectedIndex],
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
