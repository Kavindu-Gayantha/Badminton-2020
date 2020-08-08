
// import 'package:badminton2020/UI/Tabs/TabHome/tabhome.dart';
import 'package:badminton2020/UI/Tabs/homepage.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

final FirebaseDatabase database = FirebaseDatabase.instance; 



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
String _email, _password;
class _LoginState extends State<Login> {
  
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
          key: _formkey,
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      
                      'Team Badminton UOK',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.w500,
                          
                          fontSize: 30),
                    )
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in captains',
                      style: TextStyle(fontSize: 20),
                    )
                    ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    validator:(input){
                      if(input.isEmpty){
                        return 'please type something';
                      }
                      
                      
                    },
                    onSaved:(input)=> _email = input,

                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    validator: (input){
                      if(input.length<=6){
                        return 'password should be having at least 6 characters';
                      }
                    },
                    onSaved: (input)=> _password = input,
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
                        if(_email.contains("@")){
                          Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context)=> welcomescreen()),
                            );
                        }else SnackBar(content: Text('Yay! A SnackBar!'));
                        
                      },
                    )
                    ),
                Container(
                  
                  child: Row(
                    children: <Widget>[
                      Text('Does not have account?',textAlign: TextAlign.center,),
                      FlatButton(
                        textColor: Colors.green.shade700,
                        child: Text(
                          'Create Account',textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          //signup screen
                          database.reference().child("message").once().then((DataSnapshot snapshot){
                              print("value of db is \n : ${snapshot.value}");
                              
                          });
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                ),
                ),
                Container(
                  child:Center(child: Text('Not an Admin?'),
                  
                  )
                  
                ),
                 Container(
                  child: Row(
                    children: <Widget>[
                      // Text('NOT AN ADMIN?'),
                      // Text('login as just user'),
                      RaisedButton(
                        textColor: Colors.black87,
                        child: Text(
                          'User login',
                          style: TextStyle(fontSize: 20),
                        ),
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(56.0))),
                        elevation: 10,
                        onPressed: () {
                          //signup screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:(context)=>welcomescreen(),
                               )
                              );
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                ),
                ),
              ],
            )
            )
            );
  } 
}

Future <void> signIn() async {
  //todo validation
  var _formkey;
    final formState = _formkey.currentState;
  if(formState.validate() ){
    //todo login in firebase
    formState.save();
    try{
          // FirebaseUser user= await FirebaseAuth.instance.signInWithEmailAndPassword(email:_email,password:_password);
    
    }catch(e){
      print(e.message);
    }
    // var firebaseAuth;
    //     firebaseAuth.instance.signInWithEmailAndPassword(email:_email,password:_password);
  }
  //todo login in firebse
}