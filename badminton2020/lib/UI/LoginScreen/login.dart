
import 'package:badminton2020/UI/Tabs/homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email, _password; 
    
  final GlobalKey<FormState>_formKey=GlobalKey<FormState>();

  var input;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.green.shade400,
        
        title: Text('Login with credential',style: TextStyle(color: Colors.black),textDirection: TextDirection.ltr),
        
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.send), 
            
            
            onPressed:(){
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>welcomescreen()),
                );
            }
            )
        ],
        ),
        
       body:Form( 
         //Todo:implement key
         key: _formKey,
         child: Center(
           child: Column(
            children: <Widget>[
                //Todo: Implement fields
                TextFormField( 
                  validator: (input){
                    if(input.isEmpty){
                      return 'Please Enter Your Email';
                    }
                  },
                  onSaved: (input)=> _email=input,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                

                ),
                TextFormField( 
                  validator: (input){
                    if(input.length<6){
                      return 'your password need 6 characters atleast';
                    }
                  },
                  onSaved: (input)=> _password=input,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,               

                ),
                RaisedButton( 
                  onPressed: (){

                  },
                  child: Text('Sign in'),
                )
           ],
           ),
         ),
       )
     


      // child: Center(
      //   child: Center(
      //     child:Text('secondpage',textDirection: TextDirection.ltr,),
      //   ),
      // ),
    );
  }

  void signIn(){
    //Todo validate fields
    final formState = _formKey.currentState;
    if(formState.validate()){
      //todo login to firebase

    }
    
  }
}