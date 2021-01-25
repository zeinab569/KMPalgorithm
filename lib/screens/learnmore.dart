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

import 'Bio.dart';

class Learn extends StatefulWidget {
  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset("images/learnmore.jpg",),

                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Recommended Articles",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.indigo),),
               ),
                 Text("This is a guide to KMP Algorithm. Here we discuss Introduction to  KMP Algorithm, an algorithm with examples and explanations, advantages, and disadvantages. You ca n also go through our other related articles to learn more: –",
                   style: TextStyle(fontSize: 20,),),

                Padding(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    colorBrightness: Brightness.dark,
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    onPressed: _launchURL5,
                    child: Text('Dr.Sara  : KMP Algorithm',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    colorBrightness: Brightness.dark,
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    onPressed: _launchURL6,
                    child: Text('More About KMP',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                  ),
                ),

                 Padding(
                   padding: const EdgeInsets.all(5),
                   child: RaisedButton(
                     color: Colors.lightBlueAccent,
                     textColor: Colors.white,
                    onLongPress: _launchURL,
                    onPressed: _launchURL,
                    child: Text('Search Algorithms in AI',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                ),
                 ),

                Padding(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    onPressed: _launchURL2,
                    child: Text('MiniMax Algorithm',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    onPressed: _launchURL3,
                    child: Text('Linear Search in Data Structure',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    onPressed: _launchURL4,
                    child: Text('Data Mining Algorithms  ',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                  ),
                ),
              ],
            )
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



  _launchURL() async {
    const url = 'https://www.educba.com/search-algorithms-in-ai/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL2() async {
    const url = 'https://www.educba.com/minimax-algorithm/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
    _launchURL3() async {
      const url = 'https://www.educba.com/linear-search-in-data-structure/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    _launchURL4() async {
      const url = 'https://www.educba.com/data-mining-algorithms/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

  _launchURL5() async {
    const url = 'https://www.youtube.com/watch?v=-r-g3x7q1oY';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL6() async {
    const url = 'https://bio.fandom.com/wiki/Knuth-Morris-Pratt_algorithm';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

