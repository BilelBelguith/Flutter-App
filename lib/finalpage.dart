import 'package:bank_project/resume.dart';
import 'package:flutter/material.dart';

import 'AnimationScrenn.dart';
import 'First_Screen.dart';

class finalpage extends StatelessWidget {
 double Sal ;

  finalpage({required this.Sal});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black ,
      appBar: AppBar(
        title: Text('Credit Result' , style: TextStyle(letterSpacing: 2.0),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body : Column(
        children: <Widget>[
          SizedBox(height: 25,),
          //Text(calculemois().toString() , style: TextStyle(color: Colors.green),),
          Center(child: Image.asset('assets/zit3.png',height:80,)),
          SizedBox(height: 150,),
          Divider(color: Colors.green,),

          RichText(text: TextSpan(
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                letterSpacing: 2.0,),
              children: <TextSpan>[
                TextSpan(text: 'Votre crédit a ete : '),
                TextSpan(text: 'ACCEPTER' , style: TextStyle(
                    color: Colors.green,fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                )),

              ]
          )),
          Divider(color: Colors.green,),
          RichText(text: TextSpan(
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                letterSpacing: 2.0,),
              children: <TextSpan>[
                TextSpan(text: 'Tu doit payer  : '),
                TextSpan(text: '${Sal}TND/Mois' , style: TextStyle(
                  color: Colors.green,fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                )),

              ]
          )),
          Divider(color: Colors.green,),


          SizedBox(height: 80,),
          Text('MERCI POUR VOTRE FIDELITE' , style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,
            letterSpacing: 2.0,fontSize: 20),),





        ],
      ),
    );
  }
}
