import 'dart:math';

import 'package:flutter/material.dart';

import 'model/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practical',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userList = <User>[];

  void addUser(User user) {
    setState(() {
      userList.add(user);
    });
  }

  void updateUser(User user) {
    var index = userList.indexWhere((element) => element.id == user.id);
    setState(() {
      userList[index] = user;
    });
  }

  void removeUser(User user) {
    setState(() {
      userList.removeWhere((element) => element.id == user.id);
    });
    // Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // add user
          showBottomSheetDialog(context);
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              User user = userList[index];
              showBottomSheetDialog(context, user);
            },
            title: Text(userList[index].name),
            subtitle: Text(userList[index].email),
            leading: Icon(Icons.account_circle, size: 30),
            trailing: PopupMenuButton(
              onSelected: (value) {
                switch (value) {
                  case 'remove':
                    removeUser(userList[index]);
                    break;
                  case 'cancel':
                    break;
                  default:
                    Navigator.pop(context);
                }
              },
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text('Remove'),
                    value: 'remove',
                  ),
                  PopupMenuItem(
                    child: Text('Cancel'),
                    value: 'cancel',
                  ),
                ];
              },
            ),
          );
        },
      ),
    );
  }

  // InkWell - with ripple effect
  /*GestureDetector(
  child: Icon(Icons.more_vert),
  ),*/

  void showBottomSheetDialog(BuildContext context, [User? user]) {
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();

    if (user != null) {
      // update
      _nameController.text = user.name;
      _emailController.text = user.email;
    }

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(
              top: 24,
              left: 24,
              right: 24,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Enter name'),
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Enter email'),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    String name = _nameController.text.trim();
                    String email = _emailController.text.trim();

                    int id = user != null ? user.id : Random().nextInt(9999);
                    print('id : $id   name : $name   email : $email');
                    var mUser = User(id: id, name: name, email: email);

                    if (user != null) {
                      updateUser(mUser);
                    } else {
                      addUser(mUser);
                    }
                    Navigator.pop(context);
                  },
                  child: Text(user != null ? 'Update User' : 'Add User'),
                )
              ],
            ),
          ),
        );
      },
      isScrollControlled: true,
    );
  }
}
