import 'package:flutter/material.dart';

class MyFriendScreen extends StatefulWidget {
  const MyFriendScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyFriendScreen> createState() => _MyFriendScreenState();
}

class _MyFriendScreenState extends State<MyFriendScreen> {
  int _currentIndex = 1; // Set the current index to 1 for the "Friends" screen
  int number_friends = 6; // Example value for the number of friends
  String _sortByValue = "Ascending"; // Default sorting option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFF8F9E91),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  Container(
                    width: double.infinity,
                    child: const Text(
                      "Friends",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // Align the text to the left
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 16),
                    child: Row(
                      children: [
                        Text(
                          "Total Friends: $number_friends",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              child: DropdownButton<String>(
                                value: _sortByValue,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _sortByValue = newValue!;
                                  });
                                },
                                items: <String>['Ascending', 'Recently Met'].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TransparentProfileButton(
                    name: "Shravel Sharma",
                    mutualFriends: "3 mutual friends",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}


class TransparentProfileButton extends StatelessWidget {
  final String name;
  final String mutualFriends;

  TransparentProfileButton({
    required this.name,
    required this.mutualFriends,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.94, // 70% width of the screen
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3), // Transparent white
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/profile_image.jpg'), // Replace with actual image
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  mutualFriends,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
            },
            child: Text("Unfriend"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Set the button color
              onPrimary: Colors.white, // Set the text color
            ),
          ),
        ],
      ),
    );
  }
}
