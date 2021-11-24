import 'package:flutter/material.dart';

class finalpagee extends StatelessWidget {

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
              style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold,
                letterSpacing: 1.0,),
              children: <TextSpan>[
                TextSpan(text: 'Votre crédit a ete : '),
                TextSpan(text: 'REFUSER' , style: TextStyle(
                  color: Colors.red,fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                )),

              ]
          )),
          Divider(color: Colors.green,),
          Text('   Malheureusement votre salaire est insuffisant ' , style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold,
            letterSpacing: 1.0,),),
          Text(' pour avoir ce credit' , style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold,
            letterSpacing: 1.0,),),


          Divider(color: Colors.green,),


          SizedBox(height: 80,),
          Text('MERCI POUR VOTRE FIDELITE' , style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,
              letterSpacing: 2.0,fontSize: 20),),






        ],
      ),
    );
  }
}
