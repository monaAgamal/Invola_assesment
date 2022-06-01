import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          SvgPicture.asset(
            'assets/svg/error.svg',
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
