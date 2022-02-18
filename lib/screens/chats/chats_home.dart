import 'package:flutter/material.dart';

class ChatHome extends StatefulWidget {
  const ChatHome({Key? key}) : super(key: key);

  @override
  _ChatHomeState createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: ((context, index) {
          return ListTile(
            contentPadding: const EdgeInsets.all(5),
            leading: const CircleAvatar(
              radius: 30,
            ),
            title: const Text(
              'Shashank Singh',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            subtitle: const Text(
              'are bhai gazab',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: SizedBox(
              height: 40,
              child: Column(
                children: [
                  const Text(
                    '11:56',
                    style: TextStyle(fontSize: 12, color: Colors.green),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                    child: const Center(child: Text('2')),
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
