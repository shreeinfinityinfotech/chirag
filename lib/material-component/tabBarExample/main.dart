import 'package:flutter/material.dart';
import 'package:untitled/material-component/tabBarExample//tabBarScreen/SecondScreen.dart';
import 'package:untitled/material-component/tabBarExample/tabBarScreen/firstScreen.dart';
import 'package:untitled/material-component/tabBarExample/tabBarScreen/thirdScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const _title = "TabBar example ";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MystatlessWidget(),
    );
  }
}

class MystatlessWidget extends StatefulWidget {
  const MystatlessWidget({Key? key}) : super(key: key);

  @override
  State<MystatlessWidget> createState() => _MystatlessWidgetState();
}

class _MystatlessWidgetState extends State<MystatlessWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Tab Bar Example "),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.account_box),
              ),
              Tab(
                icon: Icon(Icons.add_a_photo_outlined),
              ),
              Tab(
                icon: Icon(Icons.animation_outlined),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            firstScreenTabbar(),
            secondScreenTabbar(),
            thirdScreenTabbar(),
          ],
        ));
  }
}
