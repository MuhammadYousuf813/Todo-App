import 'package:flutter/material.dart';
import 'calendar_screen.dart';
import 'focus_screen.dart';
import 'home_screen.dart';

class profilescreen extends StatefulWidget {
  const profilescreen({Key? key}) : super(key: key);

  @override
  _profilescreenState createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
  int _selectedIndex = 3;

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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homescreen()),
            );
          },
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Profile picture
          Positioned(
            top: 50,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/image6.png'),
            ),
          ),

          // Profile information
          Positioned(
            top: 150,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Martha Hays',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text('App Settings'),
                  textColor: Colors.white,
                  leading: Icon(Icons.settings, color: Colors.white),
                ),
                ListTile(
                  title: Text('Account'),
                  textColor: Colors.white,
                  leading: Icon(Icons.account_circle, color: Colors.white),
                  onTap: () {
                    // Navigate to the account settings screen
                  },
                ),
                ListTile(
                  title: Text('Change account name'),
                  textColor: Colors.white,
                  leading: Icon(Icons.person, color: Colors.white),
                  onTap: () {
                    // Navigate to the change account name screen
                  },
                ),
                ListTile(
                  title: Text('Change account password'),
                  textColor: Colors.white,
                  leading: Icon(Icons.lock, color: Colors.white),
                  onTap: () {
                    // Navigate to the change account password screen
                  },
                ),
                ListTile(
                  title: Text('Change account image'),
                  textColor: Colors.white,
                  leading: Icon(Icons.image, color: Colors.white),
                  onTap: () {
                    // Navigate to the change account image screen
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('Uptodo'),
                  textColor: Colors.white,
                  leading: Icon(Icons.list, color: Colors.white),
                  onTap: () {
                    // Navigate to the Uptodo screen
                  },
                ),
                ListTile(
                  title: Text('About Us'),
                  textColor: Colors.white,
                  leading: Icon(Icons.info, color: Colors.white),
                  onTap: () {
                    // Navigate to the About Us screen
                  },
                ),
                ListTile(
                  title: Text('FAQ'),
                  textColor: Colors.white,
                  leading: Icon(Icons.question_answer, color: Colors.white),
                  onTap: () {
                    // Navigate to the FAQ screen
                  },
                ),
                ListTile(
                  title: Text('Help & Feedback'),
                  textColor: Colors.white,
                  leading: Icon(Icons.help, color: Colors.white),
                  onTap: () {
                    // Navigate to the Help & Feedback screen
                  },
                ),
                ListTile(
                  title: Text('Support Us'),
                  textColor: Colors.white,
                  leading: Icon(Icons.star, color: Colors.white),
                  onTap: () {
                    // Navigate to the Support Us screen
                  },
                ),
                ListTile(
                  title: Text('Log out'),
                  textColor: Colors.red,
                  leading: Icon(Icons.logout, color: Colors.red),
                  onTap: () {
                    // Log out the user
                  },
                ),
              ],
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
