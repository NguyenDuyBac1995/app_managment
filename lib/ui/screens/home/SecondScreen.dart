import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
 final String? test;
 final String? test2;
 final String? test3;
 final String? test4;
 final String? test5;

  SecondScreen({
    Key? key,
    this.test, this.test2, this.test3, this.test4, this.test5
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
                        hintText: "$test4",
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
                        hintText: "$test5",
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