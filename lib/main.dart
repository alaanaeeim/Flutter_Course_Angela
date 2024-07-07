import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/alaa.jpeg'),
                ),
                Text(
                  'Alaa Naeeim',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontFamily: 'PlaywriteIS-Regular',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontFamily: 'PlaywriteIS-Regular',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Color.fromARGB(255, 193, 208, 220),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+20 101 854 3589',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'PlaywriteIS-Regular',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0),
                    ),
                  ),
                ),
                Card(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'alaanaeeim@gmail.com',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: 'PlaywriteIS-Regular',
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
