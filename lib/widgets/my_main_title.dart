import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class MyMainTitle extends StatelessWidget {
  final String title;
  final String actionText;
  const MyMainTitle({super.key, required this.title, required this.actionText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.headLineStyle2),
        InkWell(
          onTap: () {
            print("Youve been tapped ${title}");
          },
          child: Text(
            actionText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
