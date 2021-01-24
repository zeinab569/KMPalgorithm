import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Show extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        title: Text('Bioinformatics'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Introduction to KMP Algorithm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.indigo),),
                    ),
                    Text("KMP Algorithm or Kuth-Morris-Pratt Algorithm is a pattern matching algorithm in the world of computer science and was the first Linear time complexity algorithm for string matching. It was named after Donald Kuth, Vaughan Pratt, and James Morris who together wrote the paper on KMP Algorithm in 1977 although James Morris had independently invented the algorithm in 1970. A String Matching or String Algorithm in Computer Science is string or pattern recognition in a larger space finding similar strings. KMP Algorithm- data thus uses such string algorithms to improve the time taken to find and eliminate such pattern when searching and therefore called linear time complexity algorithm. The time complexity of the KMP Algorithm – data is represented as O (m+n). The KMP Algorithm – data was initially developed by analyzing the Naïve algorithm.",style: TextStyle(fontSize: 20),),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Advantages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.indigo),),
                    ),
                    Text("The most obvious advantage of KMP Algorithm – data is that it’s guaranteed worst-case efficiency as discussed.",style: TextStyle(fontSize: 20),),
                    Text("The pre-processing and the always-on time is pre-defined.",style: TextStyle(fontSize: 20),),
                    Text("There are no worst-case or accidental inputs.",style: TextStyle(fontSize: 20),),
                    Text("Preferable where the search string in a larger space is easier and more efficiently searched due to it being a time linear algorithm.",style: TextStyle(fontSize: 20),),
                    Text("The algorithm needs to move backward in the input text. This is particularly favorable in processing large files.",style: TextStyle(fontSize: 20),),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text("Disadvantages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.indigo),),
                    ),
                    Text("One of the glaring disadvantages of KMP Algorithm – data is that it doesn’t work well when the size of the alphabets increases. Due to this more and more error occurs.",style: TextStyle(fontSize: 20),),
                    Text("For processing very large files it also requires resources in the form of processors and that could be a problem for smaller organizations to adopt KMP Algorithm – data",style: TextStyle(fontSize: 20),),


                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );

  }
}
