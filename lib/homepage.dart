// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/useravatar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 23, 18, 18),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 70, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: Icon(Icons.menu)),
                    IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: Icon(Icons.search))
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Messages",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        )),
                    SizedBox(width: 35),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Groups",
                          style: TextStyle(
                            color: Color.fromARGB(255, 97, 93, 93),
                            fontSize: 32,
                          ),
                        )),
                    SizedBox(width: 30),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Updates",
                          style: TextStyle(
                            color: Color.fromARGB(255, 97, 93, 93),
                            fontSize: 32,
                          ),
                        )),
                    SizedBox(width: 30),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Calls",
                          style: TextStyle(
                            color: Color.fromARGB(255, 97, 93, 93),
                            fontSize: 32,
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left: 25, right: 25, top: 15),
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Color(0xFF27c1a9),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Favourite Contacts",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          color: Colors.white,
                          icon: Icon(Icons.more_horiz))
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        BuildContactAvatar("angel"),
                        SizedBox(width: 20),
                        BuildContactAvatar("angel"),
                        SizedBox(width: 20),
                        BuildContactAvatar("angel"),
                        SizedBox(width: 20),
                        BuildContactAvatar("angel"),
                        SizedBox(width: 20),
                        BuildContactAvatar("angel"),
                        SizedBox(width: 20),
                        BuildContactAvatar("angel"),
                        SizedBox(width: 20),
                        BuildContactAvatar("angel"),
                        SizedBox(width: 20),
                        BuildContactAvatar("angel"),
                        SizedBox(width: 20),
                        BuildContactAvatar("angel"),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 370,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                UserAvatar(filename: "alice"),
                                SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Alice",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Hello John, how are you doing?",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Column(
                              children: [
                                Text("16:51"),
                                SizedBox(
                                  height: 15,
                                ),
                                CircleAvatar(
                                  backgroundColor: Color(0xFF27c1a9),
                                  radius: 7,
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column BuildContactAvatar(String name) {
    return Column(
      children: [
        UserAvatar(
          filename: name,
        ),
        SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
