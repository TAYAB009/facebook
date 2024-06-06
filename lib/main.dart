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

  TextEditingController emailController = TextEditingController();

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(onPressed: () {}, child: Text('Login')),
            const SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Signup'),
              icon: Icon(Icons.add),
            ),
            const SizedBox(height: 10.0),
            IconButton.filledTonal(
                onPressed: () {
                  print('Is favorited');
                },
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )),
            const SizedBox(height: 20.0),
            TextButton.icon(
                onPressed: () {
                  print('User has been registered!');
                },
                icon: Icon(Icons.accessibility_rounded),
                label: const Text(
                  'Register User',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Perform some action');
        },
        tooltip: 'Start chat',
        child: Icon(Icons.message_outlined),
        // child: Text('chat'),
      ),
    );
  }
}
