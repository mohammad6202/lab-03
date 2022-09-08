import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color myColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        myColor = Colors.white;
                      });
                    },
                    icon: Icon(Icons.home))
              ],
              title: Text(
                "Photogram",
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.blue.shade500,
              //Icon(Icons.home),
            ),
            body: Container(
              color: myColor,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image(
                      height: 150,
                      width: 150,
                      image: AssetImage("images/R.jfif")),
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      IconButton(
                        onPressed: (() {
                          print("Liked!!");
                        }),
                        icon: Icon(Icons.thumb_up),
                      ),
                      IconButton(
                        onPressed: (() {
                          print("Commented!!");
                        }),
                        icon: Icon(Icons.comment),
                      ),
                      IconButton(
                          onPressed: (() {
                            print("Shared!!");
                          }),
                          icon: Icon(Icons.share)),
                      IconButton(
                          onPressed: (() {
                            print("Sent!!");
                          }),
                          icon: Icon(Icons.send))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: (() {
                              print("Liked!!");
                            }),
                            icon: Icon(Icons.thumb_up),
                          ),
                          IconButton(
                            onPressed: (() {
                              print("Commented!!");
                            }),
                            icon: Icon(Icons.comment),
                          ),
                          IconButton(
                              onPressed: (() {
                                print("Shared!!");
                              }),
                              icon: Icon(Icons.share)),
                          IconButton(
                              onPressed: (() {
                                print("Sent!!");
                              }),
                              icon: Icon(Icons.send))
                        ],
                      ),
                      Image(height: 250, image: AssetImage("images/D.jfif"))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      IconButton(
                        onPressed: (() {
                          print("Liked!!");
                        }),
                        icon: Icon(Icons.thumb_up),
                      ),
                      IconButton(
                        onPressed: (() {
                          print("Commented!!");
                        }),
                        icon: Icon(Icons.comment),
                      ),
                      IconButton(
                          onPressed: (() {
                            print("Shared!!");
                          }),
                          icon: Icon(Icons.share)),
                      IconButton(
                          onPressed: (() {
                            print("Sent!!");
                          }),
                          icon: Icon(Icons.send))
                    ],
                  ),
                  Image(
                    image: AssetImage("images/B.jfif"),
                    height: 250,
                    width: 150,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 80,
                      ),
                      Image(
                        image: AssetImage("images/C.jfif"),
                        height: 200,
                        width: 200,
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: (() {
                              print("Liked!!");
                            }),
                            icon: Icon(Icons.thumb_up),
                          ),
                          IconButton(
                            onPressed: (() {
                              print("Commented!!");
                            }),
                            icon: Icon(Icons.comment),
                          ),
                          IconButton(
                              onPressed: (() {
                                print("Shared!!");
                              }),
                              icon: Icon(Icons.share)),
                          IconButton(
                              onPressed: (() {
                                print("Sent!!");
                              }),
                              icon: Icon(Icons.send))
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            myColor = Colors.yellow;
                          });
                        },
                        icon: Icon(
                          Icons.circle,
                          color: Colors.yellow,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            myColor = Colors.blue;
                          });
                        },
                        icon: Icon(
                          Icons.circle,
                          color: Colors.blue,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            myColor = Colors.red;
                          });
                        },
                        icon: Icon(
                          Icons.circle,
                          color: Colors.red,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
