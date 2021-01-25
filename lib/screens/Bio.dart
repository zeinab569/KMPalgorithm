import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quran/helpers/commens.dart';
import 'package:quran/helpers/screen_navegation.dart';
import 'package:quran/screens/Home.dart';
import 'package:quran/widgets/bottom_navigation_icons.dart';
import 'package:quran/widgets/show.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

import 'learnmore.dart';

class Bio extends StatefulWidget {
  @override
  _BioState createState() => _BioState();
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text('Bioinformatics'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bioinfo.jpg'),
              fit: BoxFit.cover,
            )
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text("Learn More about Another Algorithms ",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.indigo)),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    onPressed: _launchURL1,
                    child: Text('Naive Algorithm',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),

                  FlatButton(
                    onPressed: _launchURL2,
                    child: Text('Boyer Moore Algorithm',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                  ),

                  FlatButton(

                    onPressed: _launchURL3,
                    child: Text('Rabin-Karp Algorithm',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                  ),

                 FlatButton(

                    onPressed: _launchURL4,
                    child: Text('Bitap Algorithm',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                  ),

                  FlatButton(

                    onPressed: _launchURL5,
                    child: Text('Two-way string-matching ',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
          ],

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
            BottomNavIcons(icon:Icons.person_pin,name:"search",onTap: (){
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

  _launchURL1() async {
    const url = 'https://www.tutorialspoint.com/Naive-Pattern-Searching';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url = 'https://en.wikipedia.org/wiki/Boyer%E2%80%93Moore_string-search_algorithm';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL3() async {
    const url = 'https://en.wikipedia.org/wiki/Rabin%E2%80%93Karp_algorithm';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL4() async {
    const url = 'https://en.wikipedia.org/wiki/Bitap_algorithm';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL5() async {
    const url = 'https://en.wikipedia.org/wiki/Two-way_string-matching_algorithm';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}
