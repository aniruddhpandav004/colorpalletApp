import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Colorpalet(),
    ),
  );
}

class Colorpalet extends StatefulWidget {
  const Colorpalet({Key? key}) : super(key: key);

  @override
  State<Colorpalet> createState() => _ColorpaletState();
}

class _ColorpaletState extends State<Colorpalet> {
  List c = [
    Colors.white,
    Colors.red,
    Colors.blue,
    Colors.orangeAccent,
    Colors.tealAccent,
    Colors.teal,
    Colors.redAccent,
    Colors.green,
    Colors.amber,
    Colors.amberAccent,
    Colors.orange,
    Colors.indigoAccent,
    Colors.purple,
    Colors.pink,
    Colors.white70,
    Colors.deepPurple,

    Color(0xffFCF6BA),
    Color(0xff48441e),
    Color(0xffd0bf1b),
    Color(0xff60314b),
    Color(0xffd32a72),
    Color(0xffFCF6BA),
    Color(0xff01071e),
    Color(0xffaa07fc),
    Color(0xff2e0334),
    Color(0xfff8342e),
    Color(0xff025650),
    Color(0xff4f5959),
    Color(0xffb4efeb),
    Color(0xffc3d0f5),
    Color(0xffeec6c9),
    Color(0xff445d5b),
    Color(0xff4d6e3f),
    Color(0xff0c2f02),
    Color(0xffc1e7c6),
    Color(0xffe7ba5d),
  ];
  int i = 0;
  int j = 0;
  int k = 0;
  int l = 0;
  int y = 0;
  int u = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Color Pallete",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          leading: Icon(Icons.menu,color: Colors.black),
          actions: [Icon(Icons.search,color: Colors.black)],
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Color Pallete \n   Generator",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff3BB3F9),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    color: c[y],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: 100,
                  color: c[i],
                ),
                Container(
                  height: 70,
                  width: 100,
                  color: c[j],
                ),
                Container(
                  height: 70,
                  width: 100,
                  color: c[k],
                ),
                Container(
                  height: 70,
                  width: 100,
                  color: c[l],
                ),
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    color: c[u],
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: InkWell(
                    onTap: () {
                      Random color = Random();
                      Random color1 = Random();
                      Random color2 = Random();
                      Random color3 = Random();
                      Random color4 = Random();
                      Random color5 = Random();
                      setState(() {
                        i = color.nextInt(c.length);
                        j = color1.nextInt(c.length);
                        k = color2.nextInt(c.length);
                        l = color3.nextInt(c.length);
                        y = color4.nextInt(c.length);
                        u = color5.nextInt(c.length);
                      });
                    },
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        height: 30,
                        width: 80,
                        alignment: Alignment.center,
                        color: Colors.tealAccent,
                        child: Text(
                          "Generate",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
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
    );
  }
}
