// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/useravatar.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
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
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
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
                        BuildContactAvatar("senshi"),
                        SizedBox(width: 20),
                        BuildContactAvatar("princess"),
                        SizedBox(width: 20),
                        BuildContactAvatar("alice"),
                        SizedBox(width: 20),
                        BuildContactAvatar("anna"),
                        SizedBox(width: 20),
                        BuildContactAvatar("angel"),
                        SizedBox(width: 20),
                        BuildContactAvatar("bob"),
                        SizedBox(width: 20),
                        BuildContactAvatar("james"),
                        SizedBox(width: 20),
                        BuildContactAvatar("George"),
                        SizedBox(width: 20),
                        BuildContactAvatar("bless"),
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
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: ListView(
                padding: EdgeInsets.only(left: 25),
                children: [
                  BuildConversation(
                      "Jesca", "I have sent you these pictures", "Jesca", 10),
                  BuildConversation(
                      "Bless", "Is your girlfriend at home?", "bless", 0),
                  BuildConversation("Cathy",
                      "I need to go pick my brother at school", "cathy", 1),
                  BuildConversation(
                      "bob",
                      "I have becaome more superior in CTF challenges",
                      "bob",
                      2),
                  BuildConversation(
                      "Oliver", "Thank you so much peter", "oliver", 0),
                  BuildConversation("Glory",
                      "Hi there! i'm trying to do code everyday", "glory", 0),
                  BuildConversation("Happy",
                      "Thanks for coming, im glad i saw you", "happy", 0),
                  BuildConversation(
                      "james", "Hey, peter did you check George", "james", 3),
                  BuildConversation(
                      "George", "Your project is very impressive", "George", 2),
                  BuildConversation("Kayla",
                      "I'm so excited today please come visit me", "kayla", 1),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF27c1a9),
          child: Icon(
            Icons.edit_outlined,
            size: 30,
          ),
        ),
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40))),
        width: 350,
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            _globalKey.currentState!.closeDrawer();
                          },
                          color: Colors.white,
                          icon: Icon(Icons.arrow_back_ios)),
                      Text(
                        "Settings",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  Row(
                    children: [
                      UserAvatar(filename: "james"),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Isaya Osward",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  DrawerItems(
                    globalKey: _globalKey,
                    title: 'Account',
                    icon: Icons.key,
                  ),
                  DrawerItems(
                    globalKey: _globalKey,
                    title: 'Chat',
                    icon: Icons.chat_bubble,
                  ),
                  DrawerItems(
                    globalKey: _globalKey,
                    title: 'Notifications',
                    icon: Icons.notifications,
                  ),
                  DrawerItems(
                    globalKey: _globalKey,
                    title: 'Data and Storage',
                    icon: Icons.storage,
                  ),
                  DrawerItems(
                    globalKey: _globalKey,
                    title: 'Help',
                    icon: Icons.help,
                  ),
                  Divider(
                    height: 30,
                  ),
                  DrawerItems(
                    globalKey: _globalKey,
                    title: 'Invite a friend',
                    icon: Icons.people_outline,
                  ),
                ],
              ),
              DrawerItems(
                globalKey: _globalKey,
                title: 'Log Out',
                icon: Icons.logout,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column BuildConversation(
      String name, String message, String filename, int msgCount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(filename: filename),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      message,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Column(
                children: [
                  Text(
                    "16:51",
                    style: TextStyle(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if (msgCount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color(0xFF27c1a9),
                      child: Text(
                        msgCount.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
        Divider(
          height: 5,
          thickness: 0.5,
          indent: 70,
          color: Colors.grey.shade300,
        )
      ],
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

class DrawerItems extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItems({
    super.key,
    required GlobalKey<ScaffoldState> globalKey,
    required this.title,
    required this.icon,
  }) : _globalKey = globalKey;

  final GlobalKey<ScaffoldState> _globalKey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                _globalKey.currentState!.closeDrawer();
              },
              color: Colors.white,
              icon: Icon(icon)),
          SizedBox(
            width: 50,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
