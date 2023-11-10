import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:intl/intl.dart';
import 'focus_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

class calendarscreen extends StatefulWidget {
  const calendarscreen({Key? key}) : super(key: key);

  @override
  State<calendarscreen> createState() => _calendarscreenState();
}

class _calendarscreenState extends State<calendarscreen> {
  DateTime currentDate = DateTime.now();
  int _selectedIndex = 1; // Set the current selected index to 1

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

  @override
  Widget build(BuildContext context) {
    // Change the background to black
    return Scaffold(
      backgroundColor: Colors.black,
      // Remove the app bar
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back),
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => homescreen()),
      //       );
      //     },
      //   ),
      // ),

      body: Column(
        children: [
          // Add text "Calendar" to the top of the screen
          Text(
            'Calendar',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 120,
          ),

          // Add the live time view, circular clock, and date and time text
          Text(
            DateFormat('hh:mm:ss a').format(DateTime.now()),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 33,
          ),
          AnalogClock(
            hourHandColor: Colors.black,
            minuteHandColor: Colors.black,
            secondHandColor: Colors.black,
            dialColor: Colors.orange,
            dialBorderColor: Colors.black,
          ),
          Text(
            DateFormat('MMMM d, yyyy').format(currentDate),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            DateFormat('hh:mm a').format(currentDate),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),

      // Add the BottomNavigationBar to the screen
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
