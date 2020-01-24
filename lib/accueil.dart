

import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  Accueil(): super();
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {

int selectedRadio;

@override
  void initState(){
     super.initState();
     selectedRadio = 0;
   }
   setSelectedRadio(int val){
    setState((){
      selectedRadio = val;
     });
   }

  @override
  Widget build(BuildContext context) {
    BoxDecoration _buildBackground(){
           return BoxDecoration(
             image: DecorationImage(
            image: AssetImage("assets/phone.jpg"),
            fit: BoxFit.cover,
          ),
        );
      }

    return Scaffold(
      body: Container(
        decoration: _buildBackground(),
          child :
            Column(
              children: <Widget>[
                 SizedBox(height:50.0),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 70),
                  child: Text(
                    'BESOIN D\'UN  DEPANNAGE ?',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                     ),
                  )
                ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0,vertical:0.0),
              child: Text(
                'ALONOUZOR vous permet d\'alerter tous \n\nles artisants les plus proches de chez vous !',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
             ),
            ),

            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                 Row(
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: selectedRadio,
                        activeColor: Colors.blue,
                        onChanged: (val){
                          print("Radio $val");
                          setSelectedRadio (val);
                        },
                      ),
                       Text ( 'Artisan' , 
                        style : TextStyle ( 
                          color : Colors.white , 
                          fontWeight : FontWeight.w800 , 
                          fontFamily : 'Roboto' , 
                          letterSpacing : 0.5 , 
                          fontSize : 20 , 
                          ), 
                      ),
                    ],
                  ),
                 
                 Row(
                    children: <Widget>[
                      Radio(
                        value: 2,
                        groupValue: selectedRadio,
                        activeColor: Colors.blue,
                        onChanged: (val){
                          print("Radio $val");
                          setSelectedRadio (val);
                        },
                      ),
                       Text ( 'Usager' , 
                        style : TextStyle ( 
                          color : Colors.white , 
                          fontWeight : FontWeight.w800 , 
                          fontFamily : 'Roboto' , 
                          letterSpacing : 0.5 , 
                          fontSize : 20 , 
                          ), 
                      ),
                    ],
                  ),
              ],
            ),

         // new  Spacer(),
         SizedBox(height:30.0),

             Center(
               child: Container(
               width: 130.0,
               height: 50.0,
               child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text("COMMENCER"),
                  onPressed: () => Navigator.of(context).pushReplacementNamed('/'),
                  shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)
                  )
                  ),
               ), 
             )  ,  
             new  Spacer(),         
          ],
        )
      )
    );
  }
}