
// import 'package:badminton2020/UI/Tabs/TabHome/tabhome.dart';
import 'package:badminton2020/UI/Tabs/homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login as Admin'),
          backgroundColor: Colors.green.shade500,
         
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Team Badminton UOK',
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in captains',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.lightGreen,
                  child: Text('Forgot Password'),
                ),
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Login'),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(16.0,13.0))),
                      elevation: 5,
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context)=> welcomescreen()),
                            );
                      },
                    )
                    ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('Does not have account?'),
                      FlatButton(
                        textColor: Colors.green.shade700,
                        child: Text(
                          'Create Account',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  } 
}