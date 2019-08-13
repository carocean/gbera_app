//以下主页应放到主程序中实现并向framework注册s
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gbera_framework/framework.dart';

class DesktopDisplay extends StatefulWidget {
  DesktopDisplay({Key key, this.title, this.context}) : super(key: key);

  final DisplayContext context;
  final String title; //应用的标题，不是android任务栏状态时的标题

  @override
  _DesktopDisplayState createState() => _DesktopDisplayState();
}

class _DesktopDisplayState extends State<DesktopDisplay> {
  @override
  Widget build(BuildContext context) {
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
              icon: new Icon(Icons.apps),
              onPressed: () {
                print("Pressed");
              })
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('carocean'),
                  subtitle: Text('我回家吃了饭'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'http://pic-bucket.ws.126.net/photo/0001/2019-08-13/EMENLA1600AN0001NOS.jpg'),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('12'),
                              Text('零钱'),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 1,
                          color: Colors.red,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('2383.0303883'),
                              Text('帑银资产'),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 1,
                          color: Colors.red,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('8892.884732'),
                              Text('纹银资产'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 2),
              child: Flex(
                direction: Axis.horizontal,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Text('桌面'),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('总资产'),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text('82828.82812'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Card(
              margin: EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                child: Column(
                  children: <Widget>[
                    Flex(
                      mainAxisSize: MainAxisSize.max,
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: <Widget>[
                              Image(
                                width: 30.0,
                                height: 30.0,
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'http://pic-bucket.ws.126.net/photo/0001/2019-08-13/EMENLA1600AN0001NOS.jpg'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Align(
                                  child: Stack(
                                    overflow: Overflow.visible,
                                    children: <Widget>[
                                      Text(
                                        '丰都集团·区级地商',
                                      ),
                                      Positioned(
                                        top: 20,
                                        left: 0,
                                        child: Text('挥泪抛售,一降再降,卖完为止。'),
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.topRight,
                                  heightFactor: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.topRight,
                            heightFactor: 2,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.directions_walk,
                                  size: 14,
                                ),
                                Text('天河区'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('我晨 尖砂膛要'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Card(
              margin: EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                child: Text('你来了？'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildCards(BuildContext context) {}
}
