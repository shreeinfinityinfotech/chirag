import 'package:flutter/material.dart';
import 'package:untitled/navigation-routing/model/user.dart';
import 'package:untitled/navigation-routing/nameroute/routernamelist.dart';
import 'package:untitled/navigation-routing/nameroute/routes/routes.dart';
import 'package:untitled/navigation-routing/nameroute/screens/first_router.dart';
import 'package:untitled/navigation-routing/nameroute/screens/second_router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Name Router',
      home: FirstRouter(),
      onGenerateRoute: Routes.generate,
      // routes: {
      //   routerNamelist.firstRoute: (context) => FirstRouter(),
      //   routerNamelist.secondRoute: (context) => Second_route(),
      // },
   // onGenerateRoute: (settings) {
      //
      //   if(settings.name == routerNamelist.firstRoute){
      //
      //   }else if(settings.name == routerNamelist.secondRoute ){
      //        User user = settings.arguments as User;
      //       return MaterialPageRoute(builder: (context)=> Second_route(user),);
      //   }
      // },

    );
  }
}
