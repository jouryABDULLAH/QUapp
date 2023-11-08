import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 50,
              child: Container(
                alignment: Alignment.center,
                width: size.width * 0.9,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(141, 158, 158, 158),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      left: 20,
                      top: 30,
                      child: Text(
                        "latifah sanad alhusinee",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(179, 0, 0, 0),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      top: 80,
                      child: Text(
                        "39#######",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(179, 0, 0, 0),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      top: 120,
                      child: Text(
                        "collage: cs ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(179, 0, 0, 0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map_rounded),
            label: 'map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'chatbot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books),
            label: 'academic',
          ),
        ],
      ),
    );
  }
}


      /*body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        SizedBox(height: 16),
                        Text(
                          'Latifah sanad',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'ID: 39######',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'collage: CS',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),*/
    