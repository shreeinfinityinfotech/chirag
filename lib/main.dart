import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: ColumWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ColumWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: nyAppbar(),
      body: ContainerDemo(),
    );
  }
}

class nyAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Container Demo"),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Column(children: [
        // this widget is text Create Widget and first of row widget..
        Flexible(
          flex: -1,
          fit: FlexFit.tight,
          child: SizedBox(
            height: 10,
          ),
        ),
        Flexible(flex: -1, fit: FlexFit.tight, child: RowOfText()),
        Flexible(flex: -1, fit: FlexFit.tight, child: RowOfBoxWidget()),
        RowOfimageWidget()
      ]),
    );
  }
}

class RowOfText extends StatelessWidget {
  const RowOfText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Text("A"), Text("B"), Text("C")],
    );
  }
}

class RowOfBoxWidget extends StatelessWidget {
  const RowOfBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Red",
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => leadDialog);
                      },
                      child: Text("click"),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side:
                                          BorderSide(color: Colors.yellow))))),
                )
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Green",
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text("click"),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(color: Colors.red))))),
                )
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.green),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Grey",
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text("click"),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(color: Colors.white))))),
                )
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.grey),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "blue",
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text("click"),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(color: Colors.white))))),
                )
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.blue),
          ),
        ),
      ],
    );
  }
}

class RowOfimageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvtarCustomitions(60, 55, "https://imageio.forbes.com/specials-images/imageserve/5ef3f7eec4f2390006f0c356/GUI--Graphical-User-Interface--concept-/960x0.jpg?format=jpg&width=960"),
        CircleAvtarCustomitions(50,45,"https://www.analyticsinsight.net/wp-content/uploads/2021/07/Technology-Can-Boost-Your-Business-Productivity.jpg"),
        CircleAvtarCustomitions(40,35,"https://mypenmyfriend.com/wp-content/uploads/2020/11/connected-technology.jpg"),
        CircleAvtarCustomitions(30,25,"https://www.macquarie.com/au/en/perspectives/technology.thumb.800.480.png?ck=1671162256")
      ],
    );
  }
}

class ColumOftable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          )
        ],
      ),
    );
  }
}

class CircleAvtarCustomitions extends StatelessWidget {
  double Mainradius = 00, seondRadius = 00;
  var ImageLink = "link";
  CircleAvtarCustomitions(this.Mainradius, this.seondRadius,this.ImageLink);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: CircleAvatar(
      radius: this.Mainradius,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: this.seondRadius,
        backgroundImage: NetworkImage(this.ImageLink),
      ),
    ));
  }
}

Dialog leadDialog = Dialog(
  child: Container(
    height: 20.0,
    width: 20.0,
    color: Colors.white,
    child: Text(
      'hey',
      textAlign: TextAlign.center,
    ),
  ),
);
