import 'package:alonouz_mobile/pages_usagers/inscription_usag.dart';
import 'package:flutter/material.dart';
  
  import 'accueil.dart';


  class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) { 
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Alônouzor',
        initialRoute: '/accueil',
            routes: {      
              '/': (context) => Inscription_usag(),
              '/accueil': (context) => Accueil(),
            },
    );
  }
}