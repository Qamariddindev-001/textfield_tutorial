import 'package:flutter/material.dart';

void main() {
  runApp(MyText());
}

class MyText extends StatefulWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  TextEditingController _controller = TextEditingController();
  String txt = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: _controller,
              ),
              Text(txt),
              TextButton(
                  onPressed: () {
                    setState(() {
                      txt = _controller.text;
                    });
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
