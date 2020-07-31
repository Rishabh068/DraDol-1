import 'package:flutter/material.dart';
import 'animations/pageAnimation.dart';
import 'maths/Numbers.dart';
import 'colors.dart';
import 'colmatch.dart';
import 'memoryGame/memorygame.dart';
import 'symbols.dart';
import 'wordmatch.dart';
import 'package:lottie/lottie.dart';
import './Poem/intro.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    height = height - 110;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("DraDol",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "Pacifico")),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height / 2,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.teal),
                          ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Lottie.asset('assets/25646-numag-color-copy.json'),
                            SizedBox(height:10),
                            FlatButton(
                              shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(10)),
                              child: Text("Colour Match"),
                              onPressed: () => Navigator.pushReplacement(context,pageAnimation(pageName:ColorGame())),
                            ),
                            ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height / 2,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.teal),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Lottie.asset('assets/25578-letter-l.json'),
                            FlatButton(
                              shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(10)),
                              child: Text("Word Match"),
                              onPressed: () => Navigator.pushReplacement(context,pageAnimation(pageName:Wordgame())),
                            ),
                             ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height / 2,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.teal),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Lottie.asset('assets/4659-avocad-bros.json'),
                            SizedBox(height: 50,),
                            FlatButton(
                              shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(10)),
                              child: Text("Fruit Colour"),
                              onPressed: () => Navigator.pushReplacement(context,
                                  pageAnimation(pageName: Game())),
                            ),
                           ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height / 2,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.teal),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Lottie.asset('assets/25172-pencil-loader.json'),
                            FlatButton(
                              shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(10)),
                              child: Text("Symbol Match"),
                              onPressed: () => Navigator.pushReplacement(
                                context,pageAnimation(pageName:Symbols()),
                              ),
                            ),
                            ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height / 2,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.teal),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Lottie.asset('assets/numbers.json'),
                            SizedBox(height:10),
                            FlatButton(
                              shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(10)),
                              child: Text("Numbers Match"),
                              onPressed: () => Navigator.pushReplacement(context,
                                  pageAnimation(pageName:Numbers())),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height / 2,
                        decoration: BoxDecoration(
                          color:Colors.transparent,
                          border: Border.all(color: Colors.teal),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Lottie.asset('assets/8060-headphone.json'),
                            FlatButton(
                              shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(10)),
                              child: Text("Poems"),
                              onPressed: () => Navigator.pushReplacement(context, pageAnimation(pageName:Poemslist())),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height / 2,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.teal),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Lottie.asset('assets/memory.json'),
                            SizedBox(height:10),
                            FlatButton(
                              shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(10)),
                              child: Text("Memory Game"),
                              onPressed: () => Navigator.pushReplacement(context,pageAnimation(pageName:Memorygame())),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height / 2,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.teal),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Lottie.asset('assets/25578-letter-l.json'),
                            FlatButton(
                              shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue),borderRadius: BorderRadius.circular(10)),
                              child: Text("Word Match"),
                              onPressed: () => Navigator.pushReplacement(context,pageAnimation(pageName:Wordgame())),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ],
            ),
        ),
      );
  }
}