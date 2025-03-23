// ویجت اختصاصی مربوط به ویژگی
import 'package:flutter/material.dart';

class {{name.pascalCase()}}CustomWidget extends StatelessWidget {
  final String text;

  const {{name.pascalCase()}}CustomWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(text),
    );
  }
} 