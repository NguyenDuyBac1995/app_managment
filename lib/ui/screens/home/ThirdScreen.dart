import 'package:flutter/material.dart';
import 'package:managment/ui/utils/constants.dart';
import 'home_screen.dart';

class thirdScreen extends StatefulWidget {
  // final String nameMyHomePage = HomeScreen.username.text;
  // final String passwordMyHomePage = HomeScreen.password.text;

  thirdScreen(
      {Key? key,
        // required this.nameMyHomePage,
        // required this.passwordMyHomePage
      })
      : super(key: key);

  @override
  State<thirdScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<thirdScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'UserName',
                    hintText: 'Enter UserName'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password'),
              ),
            ),
            ElevatedButton(
              child: Text('Sign In'),
              onPressed: () {
                if (nameController.text == Constants.str_name.toString() &&
                    passwordController.text == Constants.str_password.toString()) {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => thirdScreen()),
                  print("okkk");
                } else {
                  _showToast(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Wrong username or password'),
        action: SnackBarAction(
            label: 'Exit', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
