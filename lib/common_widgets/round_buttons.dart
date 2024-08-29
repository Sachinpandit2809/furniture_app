import 'package:flutter/material.dart';
import 'package:furniture_app/resource/app_color.dart';
import 'package:furniture_app/resource/text_style.dart';

// ignore: must_be_immutable
class RoundButtons extends StatelessWidget {
  VoidCallback onPress;
  String title;
   RoundButtons({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: AppColor.blue, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
           title,
            style: KTextStyle.K_16
                .copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
      ),
    );
  }
}
