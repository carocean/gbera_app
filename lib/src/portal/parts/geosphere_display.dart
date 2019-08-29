import 'package:flutter/widgets.dart';
import 'package:netos_framework/framework.dart';

class GeosphereDisplay extends StatefulWidget {
  final DisplayContext context;

  GeosphereDisplay({this.context});
  @override
  _GeosphereDisplayState createState() => _GeosphereDisplayState();
}

class _GeosphereDisplayState extends State<GeosphereDisplay> {
  @override
  Widget build(BuildContext context) {
    List<Widget> panel = [

    ];
    return SafeArea(
      child: CustomScrollView(
        slivers: panel,
      ),
    );
  }
}
