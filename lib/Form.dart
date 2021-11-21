
import 'package:bank_project/First_Screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'AnimationScrenn.dart';
//import 'package:intl/intl.dart';


String? DateInputValidator(value) {
  if (value.isEmpty ||
      !RegExp(r"^(((0[1-9]|[12][0-9]|30)[-/]?(0[13-9]|1[012])|31[-/]?(0[13578]|1[02])|(0[1-9]|1[0-9]|2[0-8])[-/]?02)[-/]?[0-9]{4}|29[-/]?02[-/]?([0-9]{2}(([2468][048]|[02468][48])|[13579][26])|([13579][26]|[02468][048]|0[0-9]|1[0-6])00))$")
          .hasMatch(value)) {
    return "Date est invalide";
  }
  return null;
}




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
                                  Navigator.push(context, AnimationScreen(widget: First_Screen()));
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
  TextEditingController _salary = new TextEditingController();
  TextEditingController _date = new TextEditingController();

  DateTime _currentdate = new DateTime(2000);

  Future<Null> _selectdate(BuildContext context) async{
    final DateTime? _seldate =await showDatePicker(
        context: context,
        initialDate: _currentdate,
        firstDate: DateTime(1980 , 8 ),
        lastDate: DateTime(2000),
        builder: (BuildContext context,  child){
          return Theme( data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: Colors.deepPurple,
              onPrimary: Colors.white,
              surface: Colors.pink,
              onSurface: Colors.yellow,
            ),
            dialogBackgroundColor:Colors.blue[900],
          ),
              
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
                if (value == null || value.isEmpty || value.length>10) {
                  return 'Name non valide';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            TextFormField(
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





            ),

            SizedBox(height: 20.0),

            TextFormField(
              controller: _matricule,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.card_membership , color: Colors.green,),
                labelText: "Matricule" ,
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
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),

            SizedBox(height: 20.0),
            // IconButton(icon :Icon(Icons.date_range_rounded) , color: Colors.green, onPressed: () {
            //   _selectdate(context);
            // },),

            TextFormField(
              controller: TextEditingController(text: "$_formatdate"),

              cursorColor: Colors.green,
              decoration: InputDecoration(
                //prefixIcon: Icon(Icons.date_range_rounded , color: Colors.green),
                prefixIcon: IconButton(icon :Icon(Icons.date_range_rounded) , color: Colors.green, onPressed: () {
                  _selectdate(context);
                },),

               // hintText: 'DD/MM/YYYY',

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
              //validator: DateInputValidator
            ),

            SizedBox(height: 20.0),






            TextFormField(
              controller: _Grad,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.device_hub, color: Colors.green,),
                labelText: "Grad" ,
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
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),



            TextFormField(
              keyboardType: TextInputType.number,
              controller: _salary,
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
              validator: (input) {

                final isDigitsOnly = int.tryParse(input!);
                return isDigitsOnly == null
                    ? 'Input needs to be digits only'
                    : null;


              },
            ),

            SizedBox(height: 20.0),
            TextFormField(

              cursorColor: Colors.green,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.date_range_rounded , color: Colors.green,),
                labelText: "Année d’expériences" ,
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
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Resume(name: _name.text, lname: _lname.text, age: _age.text, mail: _mail.text, num: _num.text, credit: _credit.text, salary: _salary.text)));
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