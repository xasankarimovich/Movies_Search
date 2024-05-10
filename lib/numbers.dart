import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String titleText = '';

  void calculator(int number) {
    setState(() {
      titleText += number.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Phone number"),
          centerTitle: true,
          backgroundColor: Colors.blue[200],
          elevation: 10,
          shadowColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[100],
              ),
              child: Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        titleText,
                        style: const TextStyle(fontSize: 30.0),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Add Number",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonRow(
              children: [
                NumberButton(1, "", calculator),
                NumberButton(2, "ABC", calculator),
                NumberButton(3, "DEF", calculator),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonRow(
              children: [
                NumberButton(4, "GHI", calculator),
                NumberButton(5, "JKL", calculator),
                NumberButton(6, "MNO", calculator),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonRow(
              children: [
                NumberButton(7, "PQRS", calculator),
                NumberButton(8, "TUV", calculator),
                NumberButton(9, "WXYZ", calculator),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const ButtonRow(
              children: [
                OperatorButton("*"),
                ZeroButton(),
                OperatorButton("#"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const ButtonRow(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CallOperator(),
                    ClearButton(),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class NumberButton extends StatefulWidget {
  final int number;
  final String char;
  final Function(int) value;

  const NumberButton(this.number, this.char, this.value, {super.key});

  @override
  State<NumberButton> createState() => _NumberButtonState();
}

class _NumberButtonState extends State<NumberButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.value(widget.number);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade300,
        minimumSize: const Size(90.0, 90.0),
      ),
      child: Column(
        children: [
          Text(
            widget.number.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          Text(
            widget.char,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class OperatorButton extends StatefulWidget {
  final String operator;

  const OperatorButton(this.operator, {super.key});

  @override
  State<OperatorButton> createState() => _OperatorButtonState();
}

class _OperatorButtonState extends State<OperatorButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>  print("Operator Button: ${widget.operator}"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade300,
        minimumSize: const Size(90.0, 90.0),
      ),
      child: Text(
        widget.operator,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
    );
  }
}

class ClearButton extends StatefulWidget {
  const ClearButton({super.key});

  @override
  State<ClearButton> createState() => _ClearButtonState();
}

class _ClearButtonState extends State<ClearButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 90.0,
        height: 90.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade300,
        ),
        child: const Icon(
          Icons.backspace_rounded,
          color: Colors.black,
        ),
      ),
    );
  }
}

class ZeroButton extends StatefulWidget {
  const ZeroButton({super.key});

  @override
  State<ZeroButton> createState() => _ZeroButtonState();
}

class _ZeroButtonState extends State<ZeroButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      height: 90.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
      ),
      child: const Column(
        children: [
          Text(
            "0",
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              height: 2,
            ),
          ),
          Text(
            "+",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              height: 0.1,
            ),
          ),
        ],
      ),
    );
  }
}

class CallOperator extends StatefulWidget {
  const CallOperator({super.key});

  @override
  State<CallOperator> createState() => _CallOperatorState();
}

class _CallOperatorState extends State<CallOperator> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => print("clicked call"),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 54, 190, 95),
        minimumSize: const Size(90.0, 90.0),
      ),
      child: const Icon(
        Icons.phone,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
class ButtonRow extends StatefulWidget {
  final List<Widget> children;

  const ButtonRow({super.key, required this.children});

  @override
  State<ButtonRow> createState() => _ButtonRowState();
}
class _ButtonRowState extends State<ButtonRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: widget.children,
    );
  }
}