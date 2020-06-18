

// import 'package:badminton2020/UI/Tabs/TabBoys/tabBoys.dart';
// import 'package:badminton2020/UI/Tabs/TabGirls/tabGirls.dart';
// import 'package:badminton2020/UI/Tabs/contactlist/contact_list.dart';
// import 'package:badminton2020/UI/Tabs/contactlist/modal/contact.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import 'model/modal.dart';


// import './../appbar/appbar.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseDatabase database = FirebaseDatabase.instance;

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {

  List<Board> boardMessage = List();
  Board board;
  final FirebaseDatabase database = FirebaseDatabase.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  DatabaseReference databaseReference;
  @override
  void initState(){
    super.initState();
    board = new Board("");
    databaseReference = database.reference().child("uok_badminton");
    databaseReference.onChildAdded.listen(_onEntryAdded);
         
      }
    
      @override
      Widget build(BuildContext context) {
        var firebaseAnimatedList = FirebaseAnimatedList;
                return 
                  Scaffold(
                    appBar: AppBar(
                      title: Text('Manage Players'),
                      backgroundColor:Colors.green.shade900,
                      actions: <Widget>[
                        
            
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.save),
                        ),
                          
            
                      ],
                    ),
                    body: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            
                          ],
                        ),
                        Flexible(
                          flex: 0,
                          child: Form(
                            key: formKey,
                            child: Flex(
                              direction: Axis.vertical,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.person),
                                  title: TextFormField(
                                    initialValue: "",
                                    onSaved: (val)=>board.playername=val,
                                    validator: (val)=>val==""? val:null,
                                  ),
                                ),
                                RaisedButton(
                                  color: Colors.green,
                                  child: Text("ADD PLAYER"),
                                  onPressed:(){
                                    handleSubmit();
                                  } ,
                                )
                              ],
                                                          
                            ),
                          ),
                        ),
                      Flexible(
                       child:FirebaseAnimatedList(
                         query: databaseReference,
                         itemBuilder: (_,DataSnapshot snapshot,
                         Animation<double> animation,int index){
                           return new Card(
                             child: ListTile(
                               leading: CircleAvatar(
                                 backgroundColor: Colors.green,
                               ),
                               title: Text(boardMessage[index].playername.toString()),
                              //  title: Text(DataSnapshot!=null?DataSnapshot:boardMessage[index].playername)
                             ),
                           );

                         }
                       ),

                       ),
                     ],
                    ),
                  );
}
                                                               // body:Padding(
                                                               //   padding:EdgeInsets.all(10) ,
                                                               //   child: ListView(
                                                               //     children: <Widget>[
                                                               //       Container(
                                                               //         alignment: Alignment.center,
                                                               //         padding: EdgeInsets.all(10),
                                                               //         child: Text(
                                                               //           'ADMIN PANEL',
                                                               //           style: TextStyle(
                                                               //             color: Colors.deepPurpleAccent,
                                                               //             fontWeight: FontWeight.w800,
                                                               //             fontSize: 35
                                                       
                                                               //           ),
                                                       
                                                               //         ),
                                                               //       ),
                                                               //       Column(
                                                               //         children: <Widget>[
                                                               //           Container(
                                                               //             alignment: Alignment.center,
                                                               //             padding: EdgeInsets.all(10),
                                                               //             child: TextFormField(
                                                               //               decoration: InputDecoration(
                                                               //                 border: OutlineInputBorder(),
                                                               //                 labelText: 'Add new player',
                                                               //               ),
                                                               //             ),
                                                                         
                                                               //           ),
                                                               //           RaisedButton(
                                                               //             onPressed: (){
                                                               //               // createRecord();
                                                               //               database.reference().child("message").set({
                                                               //                 "firstname":"kavi",
                                                               //                 "posission":"vice captain"
                                                               //               });
                                                                           
                                                               //                                   },
                                                               //                                   child:Text('ADD'),
                                                               //                                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(16,13))),
                                                               //                                   color: Colors.green,
                                                               //                                   elevation: 6,
                                                               //                                 ),
                                                               //                                 RaisedButton(
                                                               //                                   onPressed: (){
                                                               //                                     Navigator.of(context).pop();
                                                                             
                                                               //                                   },
                                                               //                                   child: Text('Cancle',
                                                               //                                   style: TextStyle(color: Colors.red),
                                                               //                                   ),
                                                                                                 
                                                               //                                 )
                                                               //                               ],
                                                               //                             ),
                                                               //                             Container(alignment: Alignment.center,
                                                               //                             ),
                                                                                          
                                                               //                           ],
                                                               //                         ),
                                                                             
                                                                                       
                                                                                               
                                                               //                       ),
                                                                                             
                                                                                             
                                                                                   
                                                                                         
                                                                                    
                                                                                     
                                                                                     
                                                                                   
                                                                                
                                                                               
                                                                             
                                                         void _onEntryAdded(Event event) {
                                                            setState(() {
                                                              boardMessage.add(Board.fromSnapshot(event.snapshot));
                                                            });
                                                     }
                                                   
                                                     void handleSubmit() {
                                                      final FormState form = formKey.currentState;
                                                      if(form.validate()){
                                                        form.save();
                                                        form.reset();
                       
                                                        //save form data to database
                                                        databaseReference.push().set(board.toJson());
                                                      } 
                                                      
                                                     }
                       }
                       
                     
                      
                      // void createRecord() {
                      //   database.reference().child("players").set({
                      //     "firstname": "new"
                      //   });
                      // }
// final databaseReference = Firestore.instance;
// void createRecord() async{
//   await databaseReference.collection("players")
//     .document("1")
//     .setData({

//     });
// }