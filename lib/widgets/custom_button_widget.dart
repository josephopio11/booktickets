import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppButtonCustom extends StatelessWidget {
  final String text;
  const AppButtonCustom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getWidth(15),
        horizontal: AppLayout.getWidth(15),
      ),
      decoration: BoxDecoration(
        color: const Color(0xd91130ce),
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
      ),
      child: Center(
        child: Text(
          text,
          style: Styles.textStyle.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
