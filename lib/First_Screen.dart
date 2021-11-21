import 'package:bank_project/AnimationScrenn.dart';
import 'package:bank_project/Form.dart';
import 'package:flutter/material.dart';

String? emailInputValidator(value) {
  if (value.isEmpty ||
      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
          .hasMatch(value)) {
    return "mail est invalide";
  }
  return null;
}

class First_Screen extends StatefulWidget {
  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Image.asset(
                'assets/zit3.png',
                height: 120,
              )),
              SizedBox(
                height: 50,
              ),
              Text(
                'Connectez-vous',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                      child: TextFormField(
                          cursorColor: Colors.green,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_box,
                              color: Colors.green,
                            ),
                            labelText: "Mail D'utilisateur",
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
                          validator: emailInputValidator ,

                          //onSaved: (value) => setState(() => myValue = value!),
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.vpn_key,
                            color: Colors.green,
                          ),
                          labelText: 'Mot De Passe',
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
                        //onSaved: (value) => setState(() => myValue = value!),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(context, AnimationScreen(widget: form()));
                      //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> form()));
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
                          BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Connexion",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  color: Colors.green,
                )),
                Text(
                  "- - - - - - - - - - - - - - - - - -  OR  - - - - - - - - - - - - - - - - - -",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                    child: Divider(
                  height: 12.0,
                  color: Colors.green,
                )),
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    //if (_formKey.currentState!.validate()) {
                    Navigator.push(context, AnimationScreen(widget: form()));

                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Resume(name: _name.text, lname: _lname.text, age: _age.text, mail: _mail.text, num: _num.text, credit: _credit.text, salary: _salary.text)));
                    //}
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
                          BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Créer Compte",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Vous avez oublié votre mot de passe ?",
                  style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Contact Support",
                  style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Powered by DIMAXON | Copyright 1996-2022 ",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              Text(
                "6,182,080(TN-FTW16)",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
