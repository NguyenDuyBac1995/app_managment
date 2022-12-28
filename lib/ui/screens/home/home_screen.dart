import 'package:flutter/material.dart';
import 'package:managment/model/data_bundle.dart';
import 'package:managment/ui/utils/constants.dart';
import '../../routers/fluro_navigator.dart';
import '../../routers/router_generator.dart';
import '../widgets/appbar/appbar.dart';



class HomeScreen extends StatefulWidget {
  static TextEditingController username = TextEditingController();
  static TextEditingController password = TextEditingController();
  const HomeScreen({Key? key,
   }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController email = TextEditingController();


  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCommonV1(context, strTitle: "Home"),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(7),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'Your Name',
                      hintText: 'Enter Your Name',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: TextFormField(
                    controller: address,
                    decoration: InputDecoration(
                      icon: Icon(Icons.place),
                      labelText: 'Address',
                      hintText: 'Enter Address',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      icon: Icon(Icons.mail),
                      labelText: 'Mail',
                      hintText: 'Enter Mail',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: TextFormField(
                    controller: HomeScreen.username,
                    decoration: InputDecoration(
                      icon: Icon(Icons.ac_unit),
                      labelText: 'UserName',
                      hintText: 'Enter UserName',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: TextFormField(
                    controller: HomeScreen.password,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.key),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  child: Text('Creat account'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      nextScreen(context);
                    } else {
                      errol(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void nextScreen(BuildContext context) {
    DataBundle dataBundle = new DataBundle(
      test  : name.text,
      test2 : address.text,
      test3 : email.text,
      // test4 : username.text,
      // test5 : password.text
    );
    NavigatorUtils.push(context, RouterGenerator.routeScreenTwo, data: dataBundle);
  }

  void errol(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Create Account Unbelievable  '),
        action: SnackBarAction(
            label: 'Exit', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}