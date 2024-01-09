import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
class CustomCodeInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    final StringBuffer newText = StringBuffer();
    final String trimmed = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    if (trimmed.length > 4) {
      newText.write(trimmed.substring(0, 4) + '-');
    } else {
      newText.write(trimmed);
    }

    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
