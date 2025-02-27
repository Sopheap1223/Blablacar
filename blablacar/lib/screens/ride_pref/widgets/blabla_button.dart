import 'package:Project/theme/theme.dart';
import 'package:flutter/material.dart';

class BlablaButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isPrimary;
  final IconData? icon;

  const BlablaButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.icon,
      this.isPrimary = true});

  @override
  Widget build(BuildContext context) {
    return isPrimary ? ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: BlaColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: BlaColors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        ),
      ) : TextButton.icon(
        onPressed: onPressed,
        icon: icon != null ? Icon(icon) : SizedBox.shrink(),
        label: Text(
          text,
          style: TextStyle(
            color: BlaColors.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }
}
