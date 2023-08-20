import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double totalKilometer = 100;
    double avgKcal = 150;
    int totalRuns = 120;
    double avgTime = 2;
    double avgPace = 32;

    return Scaffold(
      appBar: null,
      body: Container(
        color: Color(0xFF8F9E91),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Implement 'Home' button logic here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF8F9E91),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.white,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Implement 'Activities' button logic here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF8F9E91),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: Text(
                        "Activities",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.white,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Implement 'Profile' button logic here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF8F9E91),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 500),
                        child: Container(
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {
                              // Implement button logic
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text(
                              "START",
                              style: TextStyle(
                                color: Colors.white,
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
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: SizedBox(
                height: 450, // Set the desired height
                child: Container(
                  color: Colors.brown, // Brown background color
                  padding: EdgeInsets.all(20), // Adjust padding as needed
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10), // Add space between elements
                          Text(
                            '${totalKilometer.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Total Kilometers',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20), // Add space between rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 120,
                                height: 80,
                                color: Colors.green, // Green background color
                                padding: EdgeInsets.all(10), // Adjust padding as needed
                                child: Column(
                                  children: [
                                    Text(
                                      '$avgKcal',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Avg kcal',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10), // Add space between elements
                              Container(
                                width: 120,
                                height: 80,
                                color: Colors.green, // Green background color
                                padding: EdgeInsets.all(10), // Adjust padding as needed
                                child: Column(
                                  children: [
                                    Text(
                                      '$totalRuns',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Total Runs',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 120,
                                height: 80,
                                color: Colors.green, // Green background color
                                padding: EdgeInsets.all(10), // Adjust padding as needed
                                child: Column(
                                  children: [
                                    Text(
                                      '${avgTime.toStringAsFixed(2)}',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Avg Time',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10), // Add space between elements
                              Container(
                                width: 120,
                                height: 80,
                                color: Colors.green, // Green background color
                                padding: EdgeInsets.all(10), // Adjust padding as needed
                                child: Column(
                                  children: [
                                    Text(
                                      '${avgPace.toStringAsFixed(2)}',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Avg Pace',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
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
            ),
          ],
        ),
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
            icon: Icon(Icons.accessibility),
            label: 'Activities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

