import 'package:flutter/material.dart';

class StatusHome extends StatefulWidget {
  const StatusHome({Key? key}) : super(key: key);

  @override
  _StatusHomeState createState() => _StatusHomeState();
}

class _StatusHomeState extends State<StatusHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(5),
          leading: Stack(
            alignment: Alignment.bottomRight,
            children: [
              const CircleAvatar(
                radius: 30,
              ),
              Container(
                  height: 25,
                  decoration: const BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ))
            ],
          ),
          title: const Text(
            'My Status',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: const Text(
            'Tap to add status update',
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        const Text(
          "Recent Updates",
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        ColumnBuilder(
            itemBuilder: ((context, index) {
              return const ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: CircleAvatar(
                  radius: 30,
                ),
                title: Text(
                  'Shashank Singh',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  'Yesterday, 23:43',
                  style: TextStyle(color: Colors.grey),
                ),
              );
            }),
            itemCount: 5),
        const Text(
          "Viewed Updates",
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        ColumnBuilder(
            itemBuilder: ((context, index) {
              return const ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: CircleAvatar(
                  radius: 30,
                ),
                title: Text(
                  'Shashank Singh',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  'Yesterday, 23:43',
                  style: TextStyle(color: Colors.grey),
                ),
              );
            }),
            itemCount: 3),
      ],
    );
  }
}

class ColumnBuilder extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  // final TextDirection textDirection;
  final VerticalDirection verticalDirection;
  final int itemCount;

  const ColumnBuilder({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.mainAxisAlignment: MainAxisAlignment.start,
    this.mainAxisSize: MainAxisSize.max,
    this.crossAxisAlignment: CrossAxisAlignment.center,
    //this.textDirection,
    this.verticalDirection: VerticalDirection.down,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: new List.generate(
          this.itemCount, (index) => this.itemBuilder(context, index)).toList(),
    );
  }
}
