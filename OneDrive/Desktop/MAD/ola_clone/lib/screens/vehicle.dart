import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:ola_clone/screens/HomeScreen.dart';

class vehicle extends StatefulWidget {
  const vehicle({Key? key}) : super(key: key);

  @override
  _vehicleState createState() => _vehicleState();
}

class _vehicleState extends State<vehicle> {

  bool isSelected=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        
        children: [
          
          Container(
            // decoration: BoxDecoration(color: Colors.grey[200]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: IconButton(
                        icon: Icon(CupertinoIcons.arrow_left),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Image.asset(
                        "assets/images/map.jpg",
                        height: 275,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                  child: Text("Recommended for you",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Column(
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(color: Colors.grey[300]),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Image.asset(
                      "assets/images/rental.png",
                      height: 50,
                    ),
                    Text("Book Any",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                                    Text("\u{20B9}295-\u{20B9}325",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(color: Colors.grey[300]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Image.asset(
                      "assets/images/download (5).png",
                      height: 50,
                    ),
                    Text("Auto",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                                    Text("\u{20B9}295-\u{20B9}325",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(color: Colors.grey[300]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Image.asset(
                      "assets/images/daily.png",
                      height: 50,
                    ),
                    Text("Mini",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                                    Text("\u{20B9}295-\u{20B9}325",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(color: Colors.grey[300]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14.0, top:6),
                  child: Text("More available rides",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Column(
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(color: Colors.grey[300]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Image.asset(
                      "assets/images/rental.png",
                      height: 50,
                    ),
                    Text("Prime Sedan",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                                    Text("\u{20B9}295-\u{20B9}325",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(color: Colors.grey[300]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Image.asset(
                      "assets/images/download (5).png",
                      height: 50,
                    ),
                    Text("Auto",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                                    
                                    Text("\u{20B9}295-\u{20B9}325",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(color: Colors.grey[300]),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0,),
                          child: Text(
                            "Book Any",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                
                
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
