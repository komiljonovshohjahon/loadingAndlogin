import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInputLabelWidget extends StatelessWidget {
  final Icon icon;
  final String label;
  const TextInputLabelWidget({Key key, this.icon, this.label})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon ?? Icon(Icons.widgets),
        Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Text(label),
        ),
      ],
    );
  }
}
