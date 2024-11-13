import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_demo/services/realtime_database_service.dart';

class RealtimeDatabaseScreen extends StatefulWidget {
  @override
  _RealtimeDatabaseScreenState createState() => _RealtimeDatabaseScreenState();
}

class _RealtimeDatabaseScreenState extends State<RealtimeDatabaseScreen> {
  final RealtimeDatabaseService _dbService = RealtimeDatabaseService();
  final TextEditingController _messageController = TextEditingController();

  Future<void> _sendMessage() async {
    await _dbService.sendMessage(_messageController.text);
    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Realtime Database Example")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(labelText: "Enter Message"),
            ),
          ),
          ElevatedButton(onPressed: _sendMessage, child: Text("Send Message")),
          Expanded(
            child: StreamBuilder<DatabaseEvent>(
              stream: _dbService.getMessagesRef().onValue,  // DatabaseEvent로 업데이트
              builder: (context, snapshot) {
                if (!snapshot.hasData || snapshot.data!.snapshot.value == null) {
                  return Center(child: Text("No messages"));
                }

                Map<dynamic, dynamic> map = snapshot.data!.snapshot.value as Map<dynamic, dynamic>;
                List<dynamic> list = map.values.toList();

                return ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(list[index]['text'] ?? ''));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
