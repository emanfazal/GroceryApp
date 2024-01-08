import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

class DialPadScreen extends StatefulWidget {
  const DialPadScreen({Key? key}) : super(key: key);

  @override
  _DialPadScreenState createState() => _DialPadScreenState();
}

class _DialPadScreenState extends State<DialPadScreen> {
  final FocusNode _dialFocusNode = FocusNode();
  late TextEditingController _dialController;

  @override
  void initState() {
    super.initState();
    _dialController = TextEditingController();
  }

  @override
  void dispose() {
    _dialFocusNode.dispose();
    _dialController.dispose();
    super.dispose();
  }

  /// Function to add a digit to the dial pad
  void _addToDialPad(String digit) {
    setState(() {
      _dialController.text += digit;
    });
  }

  /// Function to clear the dial pad
  void _clearDialPad() {
    setState(() {
      _dialController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
      config: KeyboardActionsConfig(
        keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
        actions: [
          KeyboardActionsItem(focusNode: _dialFocusNode),
        ],
      ),
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                focusNode: _dialFocusNode,
                controller: _dialController,
                readOnly: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Number',
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDialButton('1'),
                  _buildDialButton('2'),
                  _buildDialButton('3'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDialButton('4'),
                  _buildDialButton('5'),
                  _buildDialButton('6'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDialButton('7'),
                  _buildDialButton('8'),
                  _buildDialButton('9'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDialButton('*'),
                  _buildDialButton('0'),
                  _buildDialButton('#'),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _clearDialPad,
                child: Text('Clear'),
              ),
            ],
          ),
        ),

    );
  }

  /// Helper method to build a button for the dial pad
  Widget _buildDialButton(String digit) {
    return ElevatedButton(
      onPressed: () => _addToDialPad(digit),
      child: Text(digit),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DialPadScreen(),
  ));
}
