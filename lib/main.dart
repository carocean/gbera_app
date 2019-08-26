library gbera;

import 'package:flutter/rendering.dart';
import 'package:gbera_app/src/login_display.dart';
import 'package:gbera_app/src/portal/parts/desktop_display.dart';
import 'package:gbera_app/src/portal/parts/netflow_display.dart';
import 'package:netos_framework/framework.dart';

import 'src/error_display.dart';
import 'src/portal/portal_display.dart';

//flutter中的dart不支持动态反射实例化类型
//面向微框架开发，向framework注册微框架

void main() async {
  await Framework(
    isEmptySystemDir: true,
    remoteMicroappHost: 'http://192.168.1.181:6700/openport',
    remoteMicroappToken: 'xxxx',
    errorPage: DefaultErrorPage(),
    bindPortals: (framework) {
      framework.portalBinder(
        portal: "gbera/1.0",
        displays: (portal) {
          //懒构造显示器的函数参数：在此传入当前app,主题,及显示器，因此得弄个displayContext让开发者传入其自定义的显示器构造
          return {
            'error_display': (context) => ErrorDispaly(
                  context: context,
                ),
            'login_display': (context) => LoginDisplay(
                  context: context,
                  title: 'xxxx',
                ),
            'portal_display': (context) => PortalDisplay(
                  context: context,
                ),
            'desktop_display': (context) => DesktopDisplay(
                  context: context,
                ),
            'netflow_display': (context) => NetflowDisplay(
              context: context,
            ),
          };
        },
      );
    },
  ).runMicroAppOn(
      taskbarTitle: 'gbera',
      welcome: 'gbera://public/login.page',
      onBeforeRun: (app) {
        print("启动中..........");
      },
      onAfterRun: (app) {
        print("..........已启动");
      });
}
