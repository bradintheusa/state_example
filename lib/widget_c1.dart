import 'package:flutter/material.dart';

class WidgetC1 extends StatefulWidget {
  final int a;
  final int b;
  const WidgetC1({Key? key, required this.a, required this.b}) : super(key: key);

  @override
  WidgetC1State createState() => WidgetC1State();
}

class WidgetC1State extends State<WidgetC1> {
  int ci = 0;
  int cc = 0;
  int cu = 0;

  @override
  void initState() {
    super.initState();
    ci = widget.a * 10 + widget.b;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    cc = widget.a * 10 + widget.b;
  }

  @override
  void didUpdateWidget(covariant WidgetC1 oldWidget) {
    super.didUpdateWidget(oldWidget);
    cu = widget.a * 10 + widget.b;
  }

  @override
  Widget build(BuildContext context) {

    int c = widget.a * 10 + widget.b;

    return Column(
      children: [
        Text(" C is $c"),
        Text(" Ci is $ci"),
        Text(" Cc is $cc"),
        Text(" Cu is $cu"),
      ],
    );
  }
}
