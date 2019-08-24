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

  _NetflowDisplayState() {
    selectTabIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> panel = [
      SliverAppBar(
        pinned: true,
        expandedHeight: 60,
        floating: false,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: getNetflowHeader(
            selectTabIndex: selectTabIndex,
            onTap: (index) {
              setState(() {
                selectTabIndex = index;
              });
            }),
      ),
    ];
    if (selectTabIndex == 0) {
      _buildPipelineTab(panel);
    } else if (selectTabIndex == 1) {
      _buildPlatTab(panel);
    }

    return SafeArea(
      child: CustomScrollView(
        slivers: panel,
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: IconButton(
              icon: Image(
                image: NetworkImage(
                    'http://pic-bucket.ws.126.net/photo/0003/2019-08-24/ENB27CUI00AJ0003NOS.jpg'),
              ),
            ),
            trailing: Padding(
              padding: EdgeInsets.only(
                top: 0,
                bottom: 20,
              ),
              child: Text('23:55'),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('[39/120]'),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 1),
                  child: Text(
                    '天空的鸟',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 1, right: 5),
                  child: Text('说:'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('什么时候回来'),
                ),
              ],
            ),
            title: Text('bill li $index'),
          ),
          Divider(
            height: 1,
          ),
        ],
      ),
    );
  }

  void _buildPipelineTab(List<Widget> panel) {
    panel.add(SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          '最近信息',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ));
    panel.add(SliverToBoxAdapter(
      child: Card(
        shape: Border(),
        elevation: 0.0,
        margin: EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        child: ListTile(
          leading: IconButton(
            icon: Image(
              image: NetworkImage(
                  'http://pic-bucket.ws.126.net/photo/0001/2019-08-24/ENBGPJEM00AO0001NOS.jpg'),
            ),
          ),
          trailing: Padding(
            padding: EdgeInsets.only(
              top: 0,
              bottom: 20,
            ),
            child: Text('10:40'),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('[29/243]'),
              Padding(
                padding: EdgeInsets.only(left: 5, right: 1),
                child: Text(
                  '旺京酒店',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 1, right: 5),
                child: Text('说:'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text('招服务员2名'),
              ),
            ],
          ),
          title: Text('公共'),
        ),
      ),
    ));
    panel.add(SliverToBoxAdapter(
      child: Card(
        shape: Border(),
        elevation: 0.0,
        margin: EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        child: ListTile(
          leading: IconButton(
            icon: Image(
              image: NetworkImage(
                  'http://pic-bucket.ws.126.net/photo/0003/2019-08-24/ENB1RG1000AJ0003NOS.jpg'),
            ),
          ),
          trailing: Padding(
            padding: EdgeInsets.only(
              top: 0,
              bottom: 20,
            ),
            child: Text('23:22'),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('[93/43]'),
              Padding(
                padding: EdgeInsets.only(left: 5, right: 1),
                child: Text(
                  '新华小学',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 1, right: 5),
                child: Text('说:'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text('国庆放假10天'),
              ),
            ],
          ),
          title: Text('地圈动态'),
        ),
      ),
    ));
    panel.add(SliverFixedExtentList(
      itemExtent: 80, // I'm forcing item heights
      delegate: SliverChildBuilderDelegate(
        _itemBuilder,
        childCount: 50,
      ),
    ));
  }

  void _buildPlatTab(List<Widget> panel) {}
}
