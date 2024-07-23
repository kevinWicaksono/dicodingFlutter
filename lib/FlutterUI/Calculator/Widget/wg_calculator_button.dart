// ignore_for_file: deprecated_member_use, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

class WgCalculatorButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  String? text;
  IconData? icon;
  final Function() onTap;

  WgCalculatorButton({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.text,
    required this.onTap,
  });

  WgCalculatorButton.Icon({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: backgroundColor,
        child: Center(
          child: icon == null
              ? Text(
                  text ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: foregroundColor),
                )
              : Icon(
                  icon,
                  color: foregroundColor,
                ),
        ),
      ),
    );
  }
}
