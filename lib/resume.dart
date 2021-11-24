import 'package:bank_project/finalpage1.dart';
import 'package:flutter/material.dart';

import 'AnimationScrenn.dart';
import 'finalpage.dart';



class Resume extends StatelessWidget {
  int Sal ;
  String Nom , Prenom , Mat ,Prixac , Prixap , Typcr , Timecr;
  Resume({required this.Sal , required this.Nom , required this.Prenom , required this.Mat , required this.Prixac , required this.Prixap , required this.Typcr, required this.Timecr});

  double calculemois(){
  var Paymois = ( (int.parse(Prixac) - int.parse(Prixap))/int.parse(Timecr));
   return Paymois;
  }




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black ,
      appBar: AppBar(
        title: Text('RESUME' , style: TextStyle(letterSpacing: 2.0),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body : Column(

      children: [
        SizedBox(height: 25,),
        //Text(calculemois().toString() , style: TextStyle(color: Colors.green),),
        Center(child: Image.asset('assets/zit3.png',height:80,)),
        SizedBox(height: 25,),
        Divider(color: Colors.green,),
        // Text(Sal.toString()),
        // Text(Nom),
        // Text(Prenom),
        // Text(Mat),
        // Text(Prixac),
        // Text(Prixap),
        // Text(Typcr),
        // Text( (int.parse(Prixac) + int.parse(Prixap)).toString() ),
        // Text(Timecr),
        SizedBox(height: 10,),
        ZoneText(val: Nom, text: 'Your name'),
        ZoneText(val: Prenom, text: 'Your last name'),
        ZoneText(val: Mat, text: 'Your ID'),
        ZoneText(val: Sal.toString() + ' DNT', text: 'Your Salary'),
        SizedBox(height: 10,),
        Divider(color: Colors.green,),
        SizedBox(height: 40,),
        Container(
          width: 300,height: 120,

            decoration:BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(5),

            ) ,
        child : Center(child : Column(children: [
          Center(child: Text('Votre demande de credit :' , style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold, ),),),
          SizedBox(height: 10,),
          RichText(text: TextSpan(
          style: TextStyle(color: Colors.black),
          children: <TextSpan>[
            TextSpan(text: 'Votre crédit dédie pour: '),
            TextSpan(text: Typcr , style: TextStyle(
                color: Colors.green
            )),

          ]
        )),
          RichText(text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(text: 'Le Valeur de Crédit demander:  '),
                TextSpan(text: Prixac +'TND' , style: TextStyle(
                    color: Colors.green
                )),

              ]
          )),
          RichText(text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(text: 'La Valeur de votre apport propre: '),
                TextSpan(text: Prixap + 'TND'  , style: TextStyle(
                    color: Colors.green
                )),

              ]
          )),

          RichText(text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(text: 'La durée de remboursement: '),
                TextSpan(text:  Timecr + '-Mois', style: TextStyle(
                    color: Colors.green
                )),

              ]
          )),

    ]))
        ),
        SizedBox(height: 5,),
        Divider(color: Colors.green,),
        SizedBox(height: 5,),
        PopButton(perm: calculemois(),Sal: Sal,),

      //Text('Merci pour votre fidélité' , style: TextStyle( color: Colors.green,fontWeight: FontWeight.bold,),),


      ],

    ),
    );
  }
}

class ZoneText extends StatelessWidget {
  const ZoneText({
    Key? key,
    required this.val, required this.text,
  }) : super(key: key);

  final String val;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                child: Table(
                  children: [
                    TableRow(children: [
                      Text('${text}', textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: Colors.white,
                          // fontFamily: 'IndieF'
                        ),
                      ),
                      Text('${val}', textAlign: TextAlign.center ,style: TextStyle(fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color: Colors.green,), ),
                    ]),
                  ],
                ),
              ),
            ]));


  }
}

class PopButton extends StatefulWidget {
 int Sal ;
 double perm ;

 PopButton({required this.Sal, required this.perm});

 @override
  _PopButtonState createState() {
    return _PopButtonState(Sal : Sal , perm : perm );
  }
}

class _PopButtonState extends State<PopButton> {
  int Sal ;
  double perm ;

  _PopButtonState({required this.Sal, required this.perm});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        onPressed: () {
          if(perm>(Sal*0.4)) {
            Navigator.push(context, AnimationScreen(widget: finalpagee()));
          }
          if(perm<(Sal*0.4)) {
            Navigator.push(context, AnimationScreen(widget: finalpage(Sal: perm)));
          }

        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff33691e), Color(0xff9ccc65)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints:
            BoxConstraints(maxWidth: 150.0, minHeight: 40.0),
            alignment: Alignment.center,
            child: Text(
              "Consulter Credit",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
