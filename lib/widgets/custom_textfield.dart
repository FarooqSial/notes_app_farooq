import 'package:flutter/material.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  TextInputType keyboardType;
  final bool? obscureText;
  final IconData? suffixIcon;
  final double? fontSize;
  final bool isFilled;
  final int? maxLines;
  final VoidCallback? onIconTap;
  final TextEditingController? controller;

  CustomTextField({
    required this.hintText,
    required this.keyboardType,
    this.obscureText,
    this.suffixIcon,
    this.fontSize,
    required this.isFilled,
    this.maxLines,
    this.onIconTap,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.5.h,
      child: TextField(
        controller: controller,
        maxLines: maxLines ?? 1,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: onIconTap,
            child: Icon(
              suffixIcon,
              color: Colors.grey,
            ),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.sp, vertical: 3.sp),
          hintText: hintText,
          hintStyle: TextStyle(
            color: NotesColor.hintColor,
            fontSize: fontSize ?? 13.sp,
            fontFamily: 'poppinsRegular',
          ),
          fillColor: isFilled ? NotesColor.fillColor : null,
          filled: isFilled,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: isFilled
                ? BorderSide.none
                : BorderSide(
                    color: NotesColor.hintColor,
                  ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: isFilled
                ? BorderSide.none
                : BorderSide(
                    color: NotesColor.hintColor,
                  ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: isFilled
                ? BorderSide.none
                : BorderSide(
                    color: NotesColor.hintColor,
                  ),
          ),
        ),
      ),
    );
  }
}
