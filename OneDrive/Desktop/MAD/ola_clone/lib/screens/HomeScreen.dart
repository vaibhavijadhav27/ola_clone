
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ola_clone/screens/Account.dart';
import 'package:ola_clone/screens/Destination.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color(0xffF1EEE7),
            child: Stack(
                        children: [
                          Image.asset(
                        "assets/images/map.jpg",
                        height: 300,
                      ),
                          Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/Account");
                            },
                            child: (user!.photoURL != null)
                                ? Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: CircleAvatar(
                                      backgroundImage:
                                          NetworkImage(user!.photoURL!),
                                      radius: 30,
                                    ),
                                )
                                : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.account_circle),
                                ),
                          )),
                      
                        ],
                      ),
          ),
          Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Column(
                  children: [
                    
                    Container(
                        height: MediaQuery.of(context).size.height / 8,
                        // color: Colors.grey,
                        child: Row(children: [
                          Expanded(
                            flex: 4,
                            child: Stack(children: [
                              Container(
                                child: Image.asset(
                                  "assets/images/daily.png",
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                ),
                              ),
                              Positioned(
                                top: 60,
                                left: 24,
                                right: 0,
                                child: Text(
                                  "Daily",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[600]),
                                ),
                              ),
                            ]),
                          ),
                          Expanded(
                            flex: 4,
                            child: Stack(children: [
                              Container(
                                child: Image.asset(
                                  "assets/images/preowned.png",
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                ),
                              ),
                              Positioned(
                                top: 60,
                                left: 7,
                                right: 0,
                                child: Text(
                                  "Pre-owned",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[600]),
                                ),
                              ),
                            ]),
                          ),
                          Expanded(
                            flex: 4,
                            child: Stack(children: [
                              Container(
                                child: Image.asset(
                                  "assets/images/rental.png",
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                ),
                              ),
                              Positioned(
                                top: 60,
                                left: 16,
                                right: 0,
                                child: Text(
                                  "Rentals",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[600]),
                                ),
                              ),
                            ]),
                          ),
                          Expanded(
                            flex: 4,
                            child: Stack(children: [
                              Container(
                                child: Image.asset(
                                  "assets/images/outstation.png",
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                ),
                              ),
                              Positioned(
                                top: 60,
                                left: 8,
                                right: 0,
                                child: Text(
                                  "Outstation",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[600]),
                                ),
                              ),
                            ]),
                          ),
                        ])),
                Divider(
   thickness: 5, // thickness of the line
   indent: 18, // empty space to the leading edge of divider.
   endIndent: 300, // empty space to the trailing edge of the divider.
   color: Colors.black, // The color to use when painting the line.
 // The divider's height extent.
 ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Destination()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[200],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.search,
                                                  color: Colors.lightGreen[300],
                                                  size: 30,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 10.0, right: 90),
                                                  child: Text(
                                                    "Search Destination",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 10),
                            child: Column(children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                        )),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16.0),
                                          child: Text(
                                            "Chhatrapati Shivaji Maharaj International Airport",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                        )),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16.0),
                                          child: Text(
                                            "Terminal 2 Navpada, Vile Parle East, Vile Parle ...",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                        )),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16.0),
                                          child: Text(
                                            "T1, Navpada, Chhatrapati Shivaji International ...",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
