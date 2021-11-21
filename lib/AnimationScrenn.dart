import 'package:flutter/cupertino.dart';

class AnimationScreen extends PageRouteBuilder {
  final Widget widget;

  AnimationScreen({required this.widget})
      : super(

      transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secanimation,
          Widget child) {
        animation  = CurvedAnimation(
            parent: animation,
            curve: Curves.elasticInOut
        );
        return ScaleTransition(

            scale: animation,
            child: child,
        );

      },
    pageBuilder: (BuildContext context , Animation<double> animation,
        Animation<double> secAnimation){
        return widget ;
    }

      );






}

