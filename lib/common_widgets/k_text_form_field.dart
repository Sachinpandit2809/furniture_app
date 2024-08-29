import 'package:flutter/material.dart';
import 'package:furniture_app/resource/app_color.dart';

class KTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final Widget prefixIcon;
  final String hintText;
  const KTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        filled: true,
        fillColor: AppColor.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.white, width: 2.0),
        ),
        // enabled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.white, width: 2.0),
        ),
      ),
    );
  }
}
