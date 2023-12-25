import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_kakao_ui_clone/chatting_list.dart';

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/bugerking.jpeg'),
                ),
              ),
            ),
          ),
          Column(
            children: List.generate(
              10, // Change this to the number of ChattingList widgets you want
              (i) => ChattingList(
                name: '권은비',
                content: 'door',
                // Use a different content for each item
                dateTime: getRandomDateTime(),
                imagePath:
                    'https://i.namu.wiki/i/50wzdMly_CgrDeqejTs2eL10XsqRsRmxQJwE1GQRK2Bm8cIc-bb9no7N3Phx0aNIl8wWREefNEazObWfqNYopYXDquZMCi0urxQBr07ELctzErVHyQovC8eFoxNjQ98T5cNsW66JrmrxyqD450_ALw.webp',
              ),
            ),
          ),
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
              label: '쇼핑'),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz, color: Colors.white), label: '더보기'),
        ],
      ),
    );
  }

  DateTime getRandomDateTime() {
    Random random = Random();

    // 현재 날짜
    DateTime now = DateTime.now();

    // 날짜를 랜덤하게 생성하기 위해 1년 전부터 현재까지의 기간을 설정
    DateTime oneYearAgo = DateTime(now.year - 1, now.month, now.day);

    // 랜덤하게 생성된 기간을 계산
    int randomDays = random.nextInt(now.difference(oneYearAgo).inDays);
    Duration randomDuration = Duration(days: randomDays);

    // 랜덤한 날짜를 계산
    DateTime randomDateTime = oneYearAgo.add(randomDuration);

    return randomDateTime;
  }
}
