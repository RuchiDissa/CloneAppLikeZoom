import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:virtual_class_room/ChatScreen.dart';
import 'package:virtual_class_room/ContactRoom.dart';
import 'package:virtual_class_room/MeetingRoom.dart';
import 'dart:async';

import 'package:virtual_class_room/ScheduleMeeting.dart';
import 'package:virtual_class_room/ShareScreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String _currentTime;

  @override
  void initState() {
    super.initState();
    // Initialize current time
    _updateTime();
    // Update current time every second
    Timer.periodic(Duration(seconds: 1), (Timer t) => _updateTime());
  }

  void _updateTime() {
    setState(() {
      _currentTime =
          DateTime.now().toString().substring(11, 19); // Get the time part only
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text('VClass'),
        ),
        leading: IconButton(
          onPressed: () {
            // open Menu
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
          icon: const Icon(
            Icons.home,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // open Menu
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen()),
              );
            },
            icon: const Icon(
              Icons.chat,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              // do something
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MeetingRoom()),
              );
            },
            icon: const Icon(
              Icons.meeting_room,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              // do something
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactRoom()),
              );
            },
            icon: const Icon(
              Icons.contacts,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Display current time
              Text(
                _currentTime ?? '',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Display calendar
              Container(
                height: 200,
                width: 200,
                // You can implement calendar widget here
                child: Placeholder(),
              ),
              SizedBox(height: 20),
              // Second Column of Images
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Second Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GestureDetector(
                          onTap: () {
                            // Open MeetingRoom page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MeetingRoom()),
                            );
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset(
                                  'lib/images/newMetting.png',
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  width: double.infinity,
                                  color: Colors.black.withOpacity(0.5),
                                  padding: const EdgeInsets.all(8),
                                  child: const Text(
                                    'New Meeting',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Third Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GestureDetector(
                          onTap: () {
                            // Perform action when image is tapped
                            print('Join Meeting tapped');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset(
                                  'lib/images/join-icon-27.jpg',
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  width: double.infinity,
                                  color: Colors.black.withOpacity(0.5),
                                  padding: const EdgeInsets.all(8),
                                  child: const Text(
                                    'Join Meeting',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Fourth Image
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScheduleMeeting()),
                            );
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset(
                                  'lib/images/Schedule-PNG-Picture.png',
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  width: double.infinity,
                                  color: Colors.black.withOpacity(0.5),
                                  padding: const EdgeInsets.all(8),
                                  child: const Text(
                                    'Schedule',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Fifth Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShareScreen()),
                            );
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Image.asset(
                                  'lib/images/share_screen_start_filled_icon_199709.png',
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  width: double.infinity,
                                  color: Colors.black.withOpacity(0.5),
                                  padding: const EdgeInsets.all(8),
                                  child: const Text(
                                    'Share Screen',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
