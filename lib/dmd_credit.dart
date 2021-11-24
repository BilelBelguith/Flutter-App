import 'package:bank_project/resume.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'AnimationScrenn.dart';
import 'Splash.dart';


String selecttime ="";
List<String> time =["12" , "24" , "36" , "48" , "60" ," 72" , "84" ,"96","108"];
String selectcrd ="";
List<String> crd =["Maison" , "voiture" , "projet" , "app" , "Others"];
class Demande extends StatefulWidget {
  int Sal ;
  String Nom ,Prenom , Mat;




  Demande({required this.Sal , required this.Nom , required this.Prenom , required this.Mat});


  @override
  _DemandeState createState() {
    return _DemandeState(Sal : Sal , Nom : Nom, Prenom: Prenom , Mat :Mat);
  }
}

class _DemandeState extends State<Demande> {
  int Sal ;
  String Nom ,Prenom ,Mat;

  _DemandeState({required this.Sal , required this.Nom , required this.Prenom,required this.Mat});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController prixac = new TextEditingController();
  TextEditingController prixap = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black ,
            appBar: AppBar(
              title: Text('Credit details' , style: TextStyle(letterSpacing: 2.0),),
              centerTitle: true,
              backgroundColor: Colors.green,
            ),
            body: SingleChildScrollView(

              child: Form(
        key: _formKey,
              child : Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),



                child : Column(

                  children: [

                    Center(child: Image.asset('assets/zit3.png',height:100,)),
                    SizedBox(height: 50,),

                    Container(
                        width: 280,
                        child : TextFormField(
                          readOnly: true,
                          //inputFormatters: [new WhitelistingTextInputFormatter(RegExp("[0-9]")) , new LengthLimitingTextInputFormatter(5)],
                          //  keyboardType: TextInputType.number,

                          controller: TextEditingController(text: Sal.toString()),


                          cursorColor: Colors.green,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.attach_money, color: Colors.green,),
                            labelText: "Salaire" ,
                            labelStyle: TextStyle(color: Colors.green),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Colors.green,
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.green,
                                width: 2.0,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.green.shade100,




                          ),

                          //validator:
                        )
                    ),
                    SizedBox(height: 30,),
                    Container(
                        width: 280,


                        decoration:BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(5),

                        ) ,
                        child :DropDownField(



                          labelText: "Credit for ",

                          labelStyle: TextStyle(color: Colors.green , fontSize: 15),
                          enabled: true,
                          items: crd,
                          onValueChanged: (value){
                            setState(() {
                              selectcrd = value ;
                            });
                          },

                        )),

                    SizedBox(height: 30,),
                    Container(
                        width:280
                        ,


                        decoration:BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(5),

                        ) ,
                        child :DropDownField(



                          labelText: "time to remb ",

                          labelStyle: TextStyle(color: Colors.green , fontSize: 15),
                          enabled: true,
                          items: time,
                          onValueChanged: (value){
                            setState(() {
                              selecttime = value ;
                            });
                          },

                        )),
                    SizedBox(height: 30,),

                Container(
                  width: 280,



                    child: TextFormField(
                      inputFormatters: [new WhitelistingTextInputFormatter(RegExp("[0-9]")),new LengthLimitingTextInputFormatter(6),],
                      controller: prixac ,
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_box , color: Colors.green,),
                        labelText: "total Prix Acquisition " ,
                        labelStyle: TextStyle(color: Colors.green),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 2.0,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.green.shade100,




                      ),


                      validator: (String? value) {
                        if (value == null || value.isEmpty ) {
                          return 'insert the total Prix Acquisition';
                        }
                        return null;
                      },


                    ),),
                    SizedBox(height:30,),


                    Container(
                      width: 280,



                      child: TextFormField(
                        inputFormatters: [new WhitelistingTextInputFormatter(RegExp("[0-9]")),new LengthLimitingTextInputFormatter(6),],
                        controller: prixap ,
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_box , color: Colors.green,),
                          labelText: "Apport Propre " ,
                          labelStyle: TextStyle(color: Colors.green),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 2.0,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.green.shade100,




                        ),


                        validator: (String? value) {
                          if (value == null || value.isEmpty  ) {
                            return 'insert ur Apport Propre';
                          }



                          return null;
                        },


                      ),),
                    SizedBox(height: 25,),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(context, AnimationScreen(widget: Resume(Sal:Sal , Nom:Nom ,Prenom:Prenom ,Mat: Mat, Prixap: prixap.text, Prixac: prixac.text, Typcr: selectcrd,Timecr: selecttime ,)));
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
                              "Resume",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),






                ],
                ),
              ),
            ),

          ),
        ));

  }
}
