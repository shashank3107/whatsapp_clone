import 'package:flutter/material.dart';

class CallsHome extends StatefulWidget {
  const CallsHome({Key? key}) : super(key: key);

  @override
  _CallsHomeState createState() => _CallsHomeState();
}

class _CallsHomeState extends State<CallsHome> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.all(5),
          leading: const CircleAvatar(
            radius: 30,
          ),
          title: const Text(
            'Shashank Singh',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.call_made,
                color: Colors.green,
              ),
              Text(
                'Yesterday, 23:43',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          trailing: Icon(
            Icons.phone,
            color: Colors.green,
          ),
        );
      },
    );
  }
}
