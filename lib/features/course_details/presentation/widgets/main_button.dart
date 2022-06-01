import 'package:flutter/material.dart';
import 'package:invola_assesment/core/app_theme/app_color_palate.dart';

class MainButton extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  final bool isLoading;

  const MainButton({
    Key? key,
    required this.label,
    this.isLoading = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: isLoading
            ? CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              )
            : Center(
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
      ),
    );
  }
}
