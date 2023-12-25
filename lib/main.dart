import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const KaKaoTalkAppScreen(),
    );
  }
}

class KaKaoTalkAppScreen extends StatefulWidget {
  const KaKaoTalkAppScreen({super.key});

  @override
  State<KaKaoTalkAppScreen> createState() => _KaKaoTalkAppScreenState();
}

class _KaKaoTalkAppScreenState extends State<KaKaoTalkAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          '채팅',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search, color: Colors.white),
            color: Colors.white,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.add_comment, color: Colors.white),
            color: Colors.white,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.settings, color: Colors.white),
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/image/bugerking.jpeg',
                  ),
                )),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white), label: '친구'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble, color: Colors.white), label: '채팅'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart_sharp, color: Colors.white),
              label: '오픈 채팅'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
              label: '쇼현'),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz, color: Colors.white), label: '더보기'),
        ],
      ),
    );
  }
}
