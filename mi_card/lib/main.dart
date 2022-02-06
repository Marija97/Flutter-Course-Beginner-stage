import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/image.jpg'),
                ),
                const SizedBox(height: 35),
                const Text('Masha',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30.0,
                      //fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                Text('FLUTTER DEVELOPER',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        color: Colors.teal.shade100,
                        letterSpacing: 2.5)),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                      // color: Colors.white, its default
                      margin: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 25.0,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.teal.shade600,
                        ),
                        title: Text('+385 91 0009 789',
                            style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 20.0,
                                color: Colors.teal.shade900)),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.teal.shade600,
                      ),
                      title: Text('fakemail@gmail.com',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0,
                            color: Colors.teal.shade900,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
