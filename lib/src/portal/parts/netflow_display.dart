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
              child: Text(
                '招服务员2名',
                overflow: TextOverflow.ellipsis,
              ),
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
              child: Text(
                '国庆放假10天',
                overflow: TextOverflow.ellipsis,
              ),
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
      _pipelineContentItemBuilder,
      childCount: 50,
    ),
  ));
}

void _buildPlatTab(List<Widget> panel) {
  panel.add(
    SliverToBoxAdapter(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('12'),
                      Text('正本'),
                    ],
                  ),
                ),
              ),
              VerticalDivider(
                width: 1,
                color: Colors.red,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('382'),
                      Text('公共'),
                    ],
                  ),
                ),
              ),
              VerticalDivider(
                color: Colors.red,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('210'),
                      Text('地圈'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  panel.add(SliverToBoxAdapter(
    child: Container(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        '网流动态',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),
  ));
  panel.add(
    SliverToBoxAdapter(
      child: Card(
        shape: Border(),
        margin: EdgeInsets.only(bottom: 10),
        child: Container(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image(
                    image: NetworkImage(
                        'http://pic1.win4000.com/wallpaper/c/53cdd1f7c1f21.jpg'),
                    width: 30,
                    height: 30,
                  ),
                  Stack(
                    children: <Widget>[
                      Text('xxx'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _pipelineContentItemBuilder(BuildContext context, int index) {
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
                child: Text(
                  '什么时候回来',
                  overflow: TextOverflow.ellipsis,
                ),
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
