import 'package:flutter/material.dart';

class DadoContato extends StatelessWidget {
  final String content;

  const DadoContato({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(content),
      ),
    );
  }
}
