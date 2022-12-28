import 'package:flutter/material.dart';
import '../../routers/fluro_navigator.dart';
import 'home_screen.dart';
import '../../routers/router_generator.dart';

class SecondScreen extends StatelessWidget {
 final String? test;
 final String? test2;
 final String? test3;
 final String? text = HomeScreen.username.text;
 final String? text2 = HomeScreen.password.text;

  SecondScreen({
    Key? key,
    this.test, this.test2, this.test3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(test);
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(17),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(7),
                  child: TextFormField(
                    enableInteractiveSelection: false,
                    enabled: false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "Your Name", //babel text
                        hintText: "$test",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)//hint text
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: TextFormField(
                    enableInteractiveSelection: false,
                    enabled: false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.place),
                        labelText: "Address", //babel text
                        hintText: "$test2",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)//hint text
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: TextFormField(
                    enableInteractiveSelection: false,
                    enabled: false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.mail),
                        labelText: "Mail", //babel text
                        hintText: "$test3",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)//hint text
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: TextFormField(
                    enableInteractiveSelection: false,
                    enabled: false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.account_balance),
                        labelText: "UserName", //babel text
                        hintText: "$text",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)//hint text
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: TextFormField(
                    enableInteractiveSelection: false,
                    enabled: false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "Password", //babel text
                        hintText: "$text2",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)//hint text
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                        child: Text('Back'),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      child: Text('Log In'),
                      onPressed: () {
                        // Constants.str_name = "";
                        // Constants.str_password = "";
                        // if(Constants.str_name == "$text" && Constants.str_password == "$text2")
                        NavigatorUtils.push(context, RouterGenerator.routeScreenThree);
                        // nextScreen3(context);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  //
  // void nextScreen3(BuildContext context) {
  //   String username3 = usernameSecondScreen;
  //   String password3 = passwordSecondScreen;
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => MyHomePage(
  //             nameMyHomePage: username3,
  //             passwordMyHomePage: password3,
  //           )));

}