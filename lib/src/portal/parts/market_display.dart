import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netos_framework/framework.dart';

class MarketDisplay extends StatefulWidget {
  final DisplayContext context;

  MarketDisplay({this.context});

  @override
  _MarketDisplayState createState() => _MarketDisplayState();
}

class _MarketDisplayState extends State<MarketDisplay> {
  @override
  Widget build(BuildContext context) {
    List<Widget> panel = [
      SliverAppBar(
        title: Text('市场'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      SliverFixedExtentList(
        itemExtent: 50,
        delegate: SliverChildBuilderDelegate(
          (context, index) {

            return ListTile(title: Text('xxxx'),);
          },
          childCount: 4,
        ),
      ),
    ];
    return SafeArea(
      child: CustomScrollView(
        slivers: panel,
      ),
    );
  }
}
