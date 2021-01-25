import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/helpers/commens.dart';
import 'package:quran/helpers/screen_navegation.dart';
import 'package:quran/widgets/bottom_navigation_icons.dart';
import 'package:quran/widgets/show.dart';


import '../methods.dart';
import 'Bio.dart';
import 'learnmore.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final myController = TextEditingController();
  final _mycont = TextEditingController();
  String _thetext;
  String _pattern;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text('Bioinformatics'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/KMP-Algorithm.jpg",),

                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textDirection: TextDirection.ltr,
                      autocorrect: true,
                      controller: myController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.red,
                            style: BorderStyle.solid,
                          )
                        ),

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.lightBlue,
                              style: BorderStyle.solid,
                            )
                        ),
                        hintText: "Enter the text",
                      ),
                      validator: (val) {
                        if (val.isEmpty) {
                          return "please enter the text ";
                        }
                      },
                      onChanged: (val) => _thetext = val,
                      //onSaved: (val) => _thetext = val,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textDirection: TextDirection.ltr,
                      autocorrect: true,
                      controller: _mycont,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.red,
                              style: BorderStyle.solid,
                            )
                        ),

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.lightBlue,
                              style: BorderStyle.solid,
                            )
                        ),
                        hintText: "Enter the pattern",
                      ),
                      validator: (val) {
                        if (val.isEmpty) {
                          return "please enter the pattern ";
                        }
                      },
                      onChanged: (val) => _pattern = val,
                      //onSaved: (val) => _pattern = val,

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      padding: new EdgeInsets.all(10),
                      child: Text("search",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      onPressed: ()async{
                        computeLPS(_pattern);
                        List<int> res = kmp(_thetext,_pattern);
                        await showDialog<void>(
                            context: context,
                            builder: (BuildContext context) {
                        return AlertDialog(
                          content: Text("founded in : "+res.toString()),
                        );
                        }
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        height: 70,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BottomNavIcons(icon: Icons.home,name: "Home",onTap: (){
              changeScreen(context, Show());
            },),
            BottomNavIcons(icon:Icons.search,name:"search",onTap: (){
              changeScreen(context, Home());
            },),
            BottomNavIcons(icon:Icons.more,name:"learn more",onTap: (){
              changeScreen(context, Learn());
            },),
            BottomNavIcons(icon:Icons.computer,name:"Bioinformatics",onTap: (){
              changeScreen(context, Bio());
            },),
          ],
        ),
      ),
    );

  }
}
