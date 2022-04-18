import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ola_clone/screens/AccountDetails.dart';
import 'package:flutter/cupertino.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {

  bool isSelected=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.grey[200]),
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
                    Image.asset(
                      "assets/images/ID.png",
                      height: 150,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                  child: Text("Vaibhavi Jadhav",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/AccountDetails');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelected=true;
                                  });
                                },
                                child: Text("+91 9876543210",
                                    style: TextStyle(
                                        fontSize: 14, color: (isSelected)? Colors.blue: Colors.grey[600])),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                                color: Colors.grey[400],
                              ),
                            ],
                          ),
                        ),
                      ),
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
                            Text("Corporate Profile",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Colors.grey[400],
                            ),
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
                            Text("Favourite locations",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Colors.grey[400],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          height: 1,
                          decoration: BoxDecoration(color: Colors.grey[300]),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 14.0),
                child: Row(
                  children: [
                    Icon(Icons.shield_outlined, size: 40),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Safety and Privacy",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                          Text("Manage account security and privacy",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 5,
                    right: 14,
                    top: MediaQuery.of(context).size.height / 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("2-Step verification",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.grey[400],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 5, top: 14.0),
                child: Container(
                  height: 1,
                  decoration: BoxDecoration(color: Colors.grey[300]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 5,
                    right: 14,
                    top: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Emergency contacts",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.grey[400],
                    )
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 14.0),
                child: Row(
                  children: [
                    Icon(LineIcons.cog, size: 40),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ride Settings",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                          Text("Manage your ride preferences",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 5,
                    right: 14,
                    top: MediaQuery.of(context).size.height / 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ola Wi-Fi",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.grey[400],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 5, top: 14.0),
                child: Container(
                  height: 1,
                  decoration: BoxDecoration(color: Colors.grey[300]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 5,
                    right: 14,
                    top: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ride Insurance",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.grey[400],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 5, top: 14.0),
                child: Container(
                  height: 1,
                  decoration: BoxDecoration(color: Colors.grey[300]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 5,
                    right: 14,
                    top: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Donation",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.grey[400],
                    )
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
              InkWell(
                onTap: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.of(context).pushNamed('/start');
                      },
                child: Padding(
                  padding: EdgeInsets.only(left: 14, top: 14),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout_outlined,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 18.5,
                        ),
                        child: Text("Log out",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
