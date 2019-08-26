import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class DefaultErrorPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Object arguments=ModalRoute.of(context).settings.arguments;
    String message='';
    if(arguments!=null&&(arguments is Map<String,Object>)){
      message=arguments['error'];
    }
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text(
                  '${ModalRoute.of(context).settings.name}',
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                message,
                style: TextStyle(
                  color: Colors.red,
                ),
                maxLines: 4,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BeforeErrorState{
  StackTrace _stackTrace;
  dynamic _exception;

  StackTrace get stackTrace => _stackTrace;

  BeforeErrorState({StackTrace stackTrace, dynamic exception}){
    _stackTrace=stackTrace;
    _exception=exception;
  }

  dynamic get exception => _exception;

}