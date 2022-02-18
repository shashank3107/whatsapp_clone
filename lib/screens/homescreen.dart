import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls/calls_home.dart';
import 'package:whatsapp_clone/screens/camera/camera_home.dart';
import 'package:whatsapp_clone/screens/chats/chats_home.dart';
import 'package:whatsapp_clone/screens/status/status_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
          backgroundColor: const Color(0xff233D4D),
          appBar: AppBar(
              backgroundColor: const Color(0xff122430),
              title: const Text(
                'WhatsApp',
                style: TextStyle(color: Colors.grey),
              ),
              actions: const <Widget>[
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ],
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(45),
                  child: TabBar(
                      isScrollable: true,
                      labelPadding: const EdgeInsets.only(
                          bottom: 15, left: 25, right: 25),
                      indicatorColor: Colors.greenAccent,
                      // indicatorPadding: const EdgeInsets.only(top: 10),
                      //  indicatorPadding: EdgeInsets.only(top: 1),
                      tabs: [
                        GestureDetector(
                          child: const Icon(Icons.camera_alt),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const CameraHome())));
                          },
                        ),
                        const Text(
                          'Chats',
                          style:
                              const TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        const Text(
                          "Status",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        const Text(
                          "Calls",
                          style:
                              const TextStyle(fontSize: 20, color: Colors.grey),
                        )
                      ]))),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(children: [
              Container(),
              const ChatHome(),
              const StatusHome(),
              const CallsHome(),
            ]),
          )),
    );
  }
}
