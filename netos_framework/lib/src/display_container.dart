import 'dart:io';

import 'i_service.dart';

class DisplayContainer implements IDisplayContainer {
  final IServiceProvider parent;
  Map<String, DisplayBinder> _binders;
  Map<String, Object> _displayGetters;

  DisplayContainer(this.parent) {
    this._binders = Map();
    this._displayGetters = Map();
  }
  @override
  getDisplayGetterByPagePath(String path){
    var _systemDir=parent.getService('@systemDir');
    PageInfo pageInfo = _systemDir.getPageInfo(
      pagePath:path,
    );
    if (pageInfo == null) {
      throw '404 未发现页';
    }
    return getDisplayGetter(pageInfo);
  }
  @override
  getDisplayGetter(PageInfo pageInfo) {
    String portal = pageInfo.portal;
    String displayName = pageInfo.display;

    Map<String, DisplayGetter> cachedDisplayGetters = _displayGetters[portal];
    if (cachedDisplayGetters != null) {
      var _displayGetter = cachedDisplayGetters[displayName];
      if (_displayGetter != null) {
        return _displayGetter;
      }
    }

    var binder = this._binders[portal];
    if (binder == null) {
      throw '404 框架没有发现 $portal';
    }
    ISystemDir systemDir=parent.getService('@systemDir');
    var portalInfo = systemDir.getPortal(pageInfo);
    Map<String, DisplayGetter> displayGetters = binder(portalInfo);
    _displayGetters[portal] = displayGetters;

    var _displayGetter = displayGetters[displayName];
    if (_displayGetter == null) {
      throw '404 缺少显示器的Getter $displayName';
    }
    return _displayGetter;
  }

  @override
  void addBinder(String portal, displays) {
    _binders[portal] = displays;
  }


}


