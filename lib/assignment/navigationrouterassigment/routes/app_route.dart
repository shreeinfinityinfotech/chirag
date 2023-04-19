import 'package:flutter/material.dart';
import '../screen/SecondScreenRouter.dart';
import '../screen/ThirdScreenRouter.dart';


class Approute{
  static const firstScreen = "/";
  static const secondScreen = "/second-screen";
  static const thirdScreen = "/third-screen";

  static Route? generateRouter(RouteSettings settings){
   if(settings.name == firstScreen){
   } else if(settings.name == secondScreen){
     return MaterialPageRoute(builder: (context) => SecondScreenRoute(),settings: settings);
   }else if(settings.name == thirdScreen){
     return MaterialPageRoute(builder: (context) => ThirdScreenRoute(),settings: settings);

   }
   return null;

  }
}