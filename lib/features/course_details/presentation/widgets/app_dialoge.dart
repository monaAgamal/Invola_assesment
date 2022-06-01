import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  final String title;

  final Widget dialogContent;

  const AppDialog({
    Key? key,
    required this.title,
    required this.dialogContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: dialogContent,
    );
  }
}
