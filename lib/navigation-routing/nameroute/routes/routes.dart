import 'package:flutter/material.dart';
import 'package:untitled/navigation-routing/nameroute/screens/third_routes.dart';
import '../../model/user.dart';
import '../screens/second_router.dart';

class Routes {
  static const firstRoute = "/", secondRoute = "/secondroute" , thirdRoute = "/thirdRoute";

  static Route<dynamic>? generate(RouteSettings settings) {
    if (settings.name == firstRoute) {
    } else if (settings.name == secondRoute) {
      User user = settings.arguments as User;
      return MaterialPageRoute(
        builder: (context) => Second_route(user),
      );
    }else if(settings.name == thirdRoute){
      User user = settings.arguments as User;
      return MaterialPageRoute(builder: (context)=> third_Route(user));
    }
  }
}
