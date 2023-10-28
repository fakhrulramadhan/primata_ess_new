import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int? maxLines;
  final Widget? icon;
  final Widget? suffixIcon;
  final bool? obsscureText;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLines,
    this.icon,
    this.suffixIcon,
    this.obsscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.black,
        )),
        prefixIcon: icon,
        suffixIcon: suffixIcon
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return "$hintText Harap Diisi";
        }
        return null;
      },
      maxLines: maxLines ?? 1,
    );
  }
}
