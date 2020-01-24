import 'package:flutter/material.dart';

class Inscription_usag extends StatefulWidget{
  Inscription_usag({Key key, this.title}): super(key: key);

  final String title;

  @override
_Inscription_usagState createState()=> _Inscription_usagState();
final formKey = GlobalKey<FormState>();

} 

class _Inscription_usagState extends State<Inscription_usag> {
  get numberController => null;

  get formkey => null;

  get emailController => null;

  get logIn => null;

  get textController => null;


  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: new Form(
    key: formkey,
    child: Padding(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
            children: <Widget>[
                new TextFormField(
                controller: textController,
                keyboardType:
                    TextInputType.text, // Use name input type for emails.
                decoration: new InputDecoration(
                    hintText: 'nom et prenom', labelText: 'Nom & Prenoms'),
                ),
                new TextFormField (
                controller: textController,
                keyboardType:
               TextInputType.number,
                decoration:
                    new InputDecoration(
                      hintText: 'contact', labelText: 'Contacts'),
                ),
                 new TextFormField(
                controller: textController,
                keyboardType:
                    TextInputType.text, 
                decoration: new InputDecoration(
                    hintText: 'sexe', labelText: 'Sexe'),
                ),
                 new TextFormField(
                controller: textController,
                keyboardType:
                    TextInputType.text, 
                decoration: new InputDecoration(
                    hintText: 'adresse', labelText: 'Adresse'),
                ),
                new Container(
                    child: new RaisedButton(
                        child: new Text('Inscription'),
                        onPressed: logIn,
                    ),
                    margin: new EdgeInsets.only(top: 10.0),
                ),
            ],
        ),
    ),
),
);
   
  }

}

