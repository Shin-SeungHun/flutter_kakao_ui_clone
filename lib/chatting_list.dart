import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChattingList extends StatelessWidget {
  String name;
  String content;
  DateTime dateTime;
  String imagePath;

  ChattingList({
    super.key,
    required this.name,
    required this.content,
    required this.dateTime,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 60,
        child: ClipOval(
          child: Image.network(imagePath),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      subtitle: Text(
        content,
        style: const TextStyle(
          fontSize: 17,
          color: Colors.grey,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      trailing: Text(
        formatChatDate(DateTime.fromMillisecondsSinceEpoch(dateTime.millisecondsSinceEpoch)),
        style: const TextStyle(color: Colors.grey, fontSize: 14),
        textAlign: TextAlign.end,
      ),
    );
  }

  String formatChatDate(DateTime dateTime) {
    DateTime now = DateTime.now();
    DateTime yesterday = DateTime(now.year, now.month, now.day - 1);

    if (dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day) {
      return '오늘';
    } else if (dateTime.year == yesterday.year &&
        dateTime.month == yesterday.month &&
        dateTime.day == yesterday.day) {
      return '어제';
    } else {
      return '${dateTime.month}월 ${dateTime.day}일';
    }
  }
}
