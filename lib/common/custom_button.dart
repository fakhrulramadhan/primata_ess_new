import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap; //tipe datanya fungsi
  final Color? color;
  final double? size;

  const CustomButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.color,
      this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: Colors.red),
      child: Text(
        text,
        style: TextStyle(
          color: color == null ? Colors.white : Colors.black,
          fontSize: size ?? 15, //kalau enggak diisi uknya 15
        ),
      ),
    );
  }
}
