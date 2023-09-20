import 'package:flutter/widgets.dart';

class View1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _View1();
}

class _View1 extends State<View1> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text('1')],
    );
  }
}
