import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SampleCounter extends StatefulWidget {
  const SampleCounter({super.key});

  @override
  State<SampleCounter> createState() => _SampleCounterState();
}

class _SampleCounterState extends State<SampleCounter> {
  final _textEdingController = TextEditingController();
  int _counteradd = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedTextKit(animatedTexts: [
          RotateAnimatedText('AWESOME',
              duration: Duration(seconds: 3),
              textStyle: TextStyle(color: Colors.green, fontSize: 40)),
          RotateAnimatedText(
            'OPTIMISTIC',
          ),
          RotateAnimatedText('DIFFERENT'),
        ]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            style: TextStyle(color: Colors.green),
            controller: _textEdingController,
            decoration: InputDecoration(
                hintText: "type here",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.orange)),
            onPressed: () {
              setState(() {
                _textEdingController.text;
                // print(_textEdingController);
              });
            },
            child: Text(
              "click here ",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Text(
            "floating button clicked these times ",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            _counteradd.toString(),
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(right: 10, top: 45),
                child: FloatingActionButton(
                  onPressed: () {
                    setState(
                      () {
                        _counteradd = _counteradd + 1;
                      },
                    );
                  },
                  child: Icon(
                    Icons.add,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counteradd = _counteradd - 1;
          });
        },
        child: Icon(Icons.minimize_outlined),
      ),
    );
  }
}
