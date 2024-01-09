import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'InputTextFormatter.dart';
class CodeInputField extends StatefulWidget {
  @override
  _CodeInputFieldState createState() => _CodeInputFieldState();
}

class _CodeInputFieldState extends State<CodeInputField> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      focusNode: _focusNode,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CustomCodeInputFormatter(),
      ],
      decoration: InputDecoration(
        hintText: "- - - -",
        border:UnderlineInputBorder(),
      ),
      maxLength: 4,
      textAlign: TextAlign.start,
      onChanged: (value) {
        if (value.length < _controller.text.length && _controller.text.contains('-')) {
          _controller.value = TextEditingValue(
            text: value.replaceAll('-', ''),
            selection: TextSelection.collapsed(offset: value.length),
          );
        }
      },
    );
  }
}