import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage()
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int current_index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My First UI"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child:  Image.network('https://thumbs.dreamstime.com/b/hand-drawn-cartoon-kids-playing-ai-generated-simple-playful-look-happy-joyful-children-324142751.jpg'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items:[ BottomNavigationBarItem(label: "home",icon:Icon(Icons.home)),
            BottomNavigationBarItem(label: "chat",icon:Icon(Icons.chat_bubble_outline_outlined)),
            BottomNavigationBarItem(label: "settings",icon:Icon(Icons.settings)),



      ],
        currentIndex: current_index,
        onTap: (int index) {
          setState(() {
            current_index = index;
          });
        },
      ),
    );
  }
}

