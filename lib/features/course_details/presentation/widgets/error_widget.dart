import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  final String errorMessage;

  const ErrorWidget({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            size: 84,
          ),
          const SizedBox(height: 12),
          Text(
            errorMessage,
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  color: Colors.black,
                  fontSize: 18,
                ),
          ),
        ],
      ),
    );
  }
}
