import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column( //Outside column to contain the 2 columns of information
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 200.0,
          children: <Widget> [
            Column( //avatar, name, and title
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/image/tree.webp'),
                  radius: 100
                ),
                Text(
                  'Spencer Wiitanen',
                  style: TextStyle(
                    fontSize: 48.0 
                  )
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 24.0 
                  )
                )
              ]
            ),
            Column( //phone, socials, and email
              children: <Widget>[
                //Phone Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/image/phone.png'),
                      radius: 20,
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      width: 200,
                      child: Text(
                        '555-555-5555',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                
                //Social Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/image/profile.jpg'),
                      radius: 20,
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      width: 200,
                      child: Text(
                        '@username',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                
                //Email Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/image/email.webp'),
                      radius: 20,
                    ),
                    SizedBox(width: 15),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'test@gmail.com',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}