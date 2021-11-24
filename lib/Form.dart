
import 'package:bank_project/First_Screen.dart';
import 'package:bank_project/Splash.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'AnimationScrenn.dart';
import 'dmd_credit.dart';
//import 'package:intl/intl.dart';

// String? DateInputValidator(value) {
//   if (value.isEmpty ||
//       !RegExp(r"^(((0[1-9]|[12][0-9]|30)[-/]?(0[13-9]|1[012])|31[-/]?(0[13578]|1[02])|(0[1-9]|1[0-9]|2[0-8])[-/]?02)[-/]?[0-9]{4}|29[-/]?02[-/]?([0-9]{2}(([2468][048]|[02468][48])|[13579][26])|([13579][26]|[02468][048]|0[0-9]|1[0-6])00))$")
//           .hasMatch(value)) {
//     return "Date est invalide";
//   }
//   return null;
// }




class form extends StatelessWidget {
  const form({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black ,






        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),


            child: Column(

              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children:[

                PopupMenuButton(

                  offset: Offset(-16, 0),

                  color: Colors.green.shade100,
                  shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.all(Radius.circular(10.0))),


                    itemBuilder: (context)=> [
                      PopupMenuItem(
                        value: 2,
                          child:Row(
                            children: [
                             // Icon(Icons.logout , ), Text("Déconnexion" ,style: TextStyle(color: Colors.green),)
                              TextButton.icon(
                                style: TextButton.styleFrom(primary: Colors.green),
                                onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Splash() ));;
                                },
                                icon: Icon(Icons.logout),
                                label: Text('Déconexion ',
                                  style: TextStyle(fontSize: 15,),
                              ),


                              )],
                          ),

                      )
                    ],

                  child: Icon(Icons.account_circle , size:30, color: Colors.green,),

                ),
                    SizedBox(width: 105.0),
                    Center(child: Image.asset('assets/zit3.png',height:80,)),
                  ]),


                const MyStatefulWidget(),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
int _Sal=0;
String selectgrad ="";
List<String> grads =["Chef" , "Post1" , "Post2" , "Post3" , "Post4"];
String selectexpan ="";
List<String> expan =["1 AN " ,"2 AN ","3 AN ","4 AN ","5 AN "];

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);



  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {



  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _name = new TextEditingController();
  TextEditingController _lname = new TextEditingController();
  TextEditingController _Grad = new TextEditingController();
  TextEditingController _matricule = new TextEditingController();
  //TextEditingController _salary = new TextEditingController();
  //TextEditingController _date = new TextEditingController();

  void Selsal(){
    if(selectgrad == "Post1" ){
      setState(() {
        _Sal=1000;
      });
    }

    if(selectgrad == "Chef" ){
      setState(() {
        _Sal=5000;
      });
    }

    if(selectgrad == "Post2" ){
      setState(() {
        _Sal=2000;
      });
    }

    if(selectgrad == "Post3" ){
      setState(() {
        _Sal=3000;
      });
    }

    if(selectgrad == "Post4" ){
      setState(() {
        _Sal=4000;
      });
    }

  }

  DateTime _currentdate = new DateTime(1999);

  Future<Null> _selectdate(BuildContext context) async{
    final DateTime? _seldate =await showDatePicker(
        context: context,
        initialDate: _currentdate,
        firstDate: DateTime(1960 ,1 ),
        lastDate: DateTime(1999),
      builder: ( context, child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: Colors.green,
              onPrimary: Colors.white,
              surface: Colors.green,
              onSurface: Colors.black,
            ),
            dialogBackgroundColor:Colors.green.shade100,
          ),
          child: child!,
        );
      },
    );
    if (_seldate!= null){
      setState(() {
          _currentdate = _seldate;
      });
    }
  }



  @override
  Widget build(BuildContext context) {


  String _formatdate = new DateFormat.yMMMd().format(_currentdate);
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[





            TextFormField(
              inputFormatters: [new WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),new LengthLimitingTextInputFormatter(8),],
              controller: _name,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_box , color: Colors.green,),
                labelText: "Nom " ,
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
                  return 'Name non valide';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            TextFormField(
              inputFormatters: [new WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),new LengthLimitingTextInputFormatter(12),],
              controller: _lname,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_box , color: Colors.green,),
                labelText: "Prénom " ,
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
                  return 'Name non valide';
                }
                return null;
              },


            ),

            SizedBox(height: 20.0),

            TextFormField(
              inputFormatters: [new LengthLimitingTextInputFormatter(5),],

              controller: _matricule,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.card_membership , color: Colors.green,),
                labelText: "Matricule" ,
                hintText: "A0000",
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

//|| _matricule?.substring(3,_matricule.length).contains(new RegExp(r'[A-Z]')) != null


              ),

              validator: (String? _matricule) {
                // if (_matricule![0].contains(new RegExp(r'[0-9]')  ) ||  _matricule[0].contains(new RegExp(r'[a-z]')   ) || _matricule.substring(1,_matricule.length).contains(new RegExp(r'[a-zA-Z]')   )   ) {
                //   return 'check ur matricule' ;
                // }
                if (_matricule!.isEmpty || _matricule == null ||  _matricule[0].contains(new RegExp(r'[0-9]')  ) ||  _matricule[0].contains(new RegExp(r'[a-z]')   ) || _matricule.substring(1,_matricule.length).contains(new RegExp(r'[a-zA-Z]')   )   ) {
                  return 'check ur matricule';
                }

                return null;

              },
            ),

            SizedBox(height: 20.0),

            TextFormField(
              readOnly: true,
              // focusNode: FocusNode(),
              // enableInteractiveSelection: true ,
              //   controller: TextEditingController()..text = 'Your initial value',
              //   onChanged: (text) => {
              //     "$_formatdate"
              //   },

              controller: TextEditingController(text: "$_formatdate"),

              cursorColor: Colors.green,
              decoration: InputDecoration(
                //prefixIcon: Icon(Icons.date_range_rounded , color: Colors.green),
                prefixIcon: IconButton(
                  icon :Icon(Icons.date_range_rounded) ,
                  color: Colors.green,
                  onPressed: () {
                  _selectdate(context);
                },),



                labelText: "Date de naissance" ,
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
             // validator: DateInputValidator
            ),

            SizedBox(height: 20.0),
            // DropDownField(
            //   controller: _Grad ,
            //
            // ),








            Container(
              width: 220,


              decoration:BoxDecoration(
                color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(5),

              ) ,
                child :DropDownField(


              controller: _Grad,
            labelText: "Select ur grad",

            labelStyle: TextStyle(color: Colors.green , fontSize: 15),
              enabled: true,
              items: grads,
              onValueChanged: (value){
                setState(() {
                  selectgrad = value ;
                  Selsal();

                });
              },

                )),
              // decoration: InputDecoration(
              //   prefixIcon: Icon(Icons.device_hub, color: Colors.green,),
              //   labelText: "Grad" ,
              //   labelStyle: TextStyle(color: Colors.green),
              //   enabledBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(5),
              //     borderSide: BorderSide(
              //       color: Colors.green,
              //       width: 1.0,
              //     ),
              //   ),
              //   focusedBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(30),
              //     borderSide: BorderSide(
              //       color: Colors.green,
              //       width: 2.0,
              //     ),
              //   ),
              //   filled: true,
              //   fillColor: Colors.green.shade100,
              //
              //
              //
              //
              // ),
              // validator: (String? value) {
              //   if (value == null || value.isEmpty ) {
              //     return 'Name non valide';
              //   }
              //   return null;
              // },

            SizedBox(height: 20.0),



            Container(
                width: 220,
                child : TextFormField(
                  readOnly: true,
              //inputFormatters: [new WhitelistingTextInputFormatter(RegExp("[0-9]")) , new LengthLimitingTextInputFormatter(5)],
            //  keyboardType: TextInputType.number,

                  controller: TextEditingController(text: "$_Sal"),


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

            SizedBox(height: 20.0),
            Container(
                width: 220,


                decoration:BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(5),

                ) ,
                child :DropDownField(



                  labelText: "Select ur Année dexp",

                 labelStyle: TextStyle(color: Colors.green , fontSize: 15),
                  enabled: true,
                  items: expan,
                  onValueChanged: (value){
                    setState(() {
                      selectexpan = value ;
                    });
                  },

                )),
            // TextFormField(
            //
            //   cursorColor: Colors.green,
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(Icons.date_range_rounded , color: Colors.green,),
            //     labelText: "Année d’expériences" ,
            //     labelStyle: TextStyle(color: Colors.green),
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(5),
            //       borderSide: BorderSide(
            //         color: Colors.green,
            //         width: 1.0,
            //       ),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(30),
            //       borderSide: BorderSide(
            //         color: Colors.green,
            //         width: 2.0,
            //       ),
            //     ),
            //     filled: true,
            //     fillColor: Colors.green.shade100,
            //
            //
            //
            //
            //   ),
            //   validator: (String? value) {
            //     if (value == null || value.isEmpty) {
            //       return 'Please enter some text';
            //     }
            //     return null;
            //   },
            // ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context, AnimationScreen(widget: Demande(Sal:_Sal , Nom:_name.text ,Prenom:_lname.text ,Mat:_matricule.text ,)));
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
                      "INSCRIPTION",
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
    );
  }

}
