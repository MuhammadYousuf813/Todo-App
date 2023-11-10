import 'package:flutter/material.dart';

import 'calendar_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

class focusscreen extends StatefulWidget {
  const focusscreen({Key? key}) : super(key: key);

  @override
  _focusscreenState createState() => _focusscreenState();
}

class _focusscreenState extends State<focusscreen> {
  int _selectedIndex =
      2; // Set the default selected index to 2 for Focus screen

  bool isFocusing = false; // Set the initial focus mode state to false

  void _onItemTapped(int index) {
    switch (index) {
      case 0: // Index screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => homescreen()),
        );
        break;
      case 1: // Calendar screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => calendarscreen()),
        );
        break;
      case 2: // Focus screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => focusscreen()),
        );
        break;
      case 3: // Profile screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => profilescreen()),
        );
        break;
      default:
        break;
    }
  }

  void _startFocusing() {
    setState(() {
      isFocusing = true;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Your Notifications are stopped.'),
      ),
    );
  }

  void _stopFocusing() {
    setState(() {
      isFocusing = false;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Your Notifications are now running.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homescreen()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          // Focus mode text
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Focus Mode',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Background image
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/images/image7.png',
                height: 120.0,
                width: 200.0,
              ),
            ),
          ),

          // Notification text
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'While your focus mode is on, all of your notifications will be off',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Start/Stop focusing button
          Padding(
            padding: const EdgeInsets.only(top: 48.0, bottom: 50.0),
            child: ElevatedButton(
              onPressed: isFocusing ? _stopFocusing : _startFocusing,
              style: ElevatedButton.styleFrom(
                primary: isFocusing ? Colors.red : Colors.purple,
              ),
              child: Text(
                isFocusing ? 'Stop Focusing' : 'Start Focusing',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Index',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Focus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
