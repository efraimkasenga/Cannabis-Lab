import 'package:cannabis/main.dart';
import 'package:cannabis/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Widget? suffix;
  final Widget? prefixIcon;
  const CustomTextField(
      {super.key, required this.label, this.prefixIcon, this.suffix});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        style:
            GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
            isDense: true,
            labelStyle: GoogleFonts.montserrat(
                fontSize: 12, fontWeight: FontWeight.w600),
            fillColor: grey.withAlpha(100),
            filled: true,
            suffixIcon: suffix,
            prefixIcon: CustomContainer(
                marginAll: 8,
                width: 24,
                height: 24,
                circular: true,
                color: white.withAlpha(100),
                child: prefixIcon ?? const SizedBox.shrink()),
            labelText: label,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(24)))),
      ),
    );
  }
}
