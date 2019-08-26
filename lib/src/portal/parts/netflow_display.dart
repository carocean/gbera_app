import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gbera_app/src/portal/widgets/headers.dart';
import 'package:netos_framework/framework.dart';

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
        '管道',
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
            Text(
              '[29/243]',
              style: TextStyle(fontSize: 12),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 1),
              child: Text(
                '旺京酒店',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 1, right: 5),
              child: Text(
                '说:',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                '招服务员2名',
                style: TextStyle(
                  fontSize: 12,
                ),
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
            Text(
              '[93/43]',
              style: TextStyle(fontSize: 12),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 1),
              child: Text(
                '新华小学',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 1, right: 5),
              child: Text(
                '说:',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                '国庆放假10天',
                style: TextStyle(fontSize: 12),
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
//  panel.add(
//    SliverToBoxAdapter(
//      child: Center(
//        child: Padding(
//          padding: EdgeInsets.only(bottom: 10),
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            mainAxisSize: MainAxisSize.max,
//            children: <Widget>[
//              Padding(
//                padding: EdgeInsets.only(left: 10, right: 10),
//                child: GestureDetector(
//                  onTap: () {},
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Text('12'),
//                      Text('所有'),
//                    ],
//                  ),
//                ),
//              ),
//              VerticalDivider(
//                width: 1,
//                color: Colors.red,
//              ),
//              Padding(
//                padding: EdgeInsets.only(left: 10, right: 10),
//                child: GestureDetector(
//                  onTap: () {},
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Text('382'),
//                      Text('公共'),
//                    ],
//                  ),
//                ),
//              ),
//              VerticalDivider(
//                color: Colors.red,
//              ),
//              Padding(
//                padding: EdgeInsets.only(left: 10, right: 10),
//                child: GestureDetector(
//                  onTap: () {},
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Text('210'),
//                      Text('地圈'),
//                    ],
//                  ),
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    ),
//  );

  panel.add(SliverToBoxAdapter(
    child: Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '信息',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 20,
            height: 20,
            child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Icon(
                Icons.edit,
                size: 20,
              ),
              onPressed: () {
                print('object');
              },
            ),
          ),
        ],
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
            top: 5,
            left: 10,
            right: 10,
            bottom: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5, right: 5),
                child: Image(
                  image: NetworkImage(
                      'https://sjbz-fd.zol-img.com.cn/t_s208x312c5/g5/M00/01/06/ChMkJ1w3FnmIE9dUAADdYQl3C5IAAuTxAKv7x8AAN15869.jpg'),
                  height: 35,
                  width: 35,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('波涛旅行Hotel'),
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: IconButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {},
                            icon: Icon(
                              Icons.art_track,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      alignment: Alignment.topLeft,
                      child: Text(
                          '不走形式，研发中心月度实现目标，由上级主管给出几个目标维度，被考核人自已填本月实际目标，并由主管审核下级目标，最终呈给人事部。工作态度：考核项固定'),
                    ),
                  ],
                ),
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
              Text(
                '[39/120]',
                style: TextStyle(fontSize: 12),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, right: 1),
                child: Text(
                  '天空的鸟',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 1, right: 5),
                child: Text(
                  '说:',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  '什么时候回来',
                  style: TextStyle(fontSize: 12),
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
