import 'package:flutter/material.dart';
import 'package:untitled/assignment/navigationrouterassigment/routes/app_route.dart';
import 'screen/FirstScreenRouter.dart';

void main(){
  runApp(const MainScreen());
}
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     title: "NavigationRouterAssisgment",
     theme: ThemeData(
       textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.brown)
     ),
     home: const FirstScreenRouter(),
      onGenerateRoute: Approute.generateRouter,
    );
  }
}

