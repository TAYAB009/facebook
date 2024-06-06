import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showPassword = false;

  // void showHidePassword() {

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 46, 9, 182),

      appBar: AppBar(
        title: Text('Skills App'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),

      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          decoration: InputDecoration(
            label: Text('Email'),
            hintText: 'Enter your email',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            prefix: Icon(Icons.email_outlined),
            suffix: IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: Icon(Icons.remove_red_eye)),
            errorText: 'This field is required and can not be left as empty',
          ),
          obscureText: showPassword,
          obscuringCharacter: '*',
        ),
      )),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    );
  }
}
