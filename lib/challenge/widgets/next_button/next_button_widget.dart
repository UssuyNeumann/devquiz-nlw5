import 'package:devquiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;

  NextButtonWidget({this.label, this.backgroundColor, this.fontColor, this.borderColor, this.onTap});

  NextButtonWidget.green({String label, VoidCallback onTap}) 
    : this.backgroundColor = AppColors.darkGreen, 
      this.fontColor = AppColors.white, 
      this.borderColor = AppColors.green,
      this.onTap = onTap,
      this.label = label;

  NextButtonWidget.white({String label, VoidCallback onTap}) 
    : this.backgroundColor = AppColors.white, 
      this.fontColor = AppColors.grey, 
      this.borderColor = AppColors.border,
      this.onTap = onTap,
      this.label = label;

  NextButtonWidget.purple({String label, VoidCallback onTap}) 
    : this.backgroundColor = AppColors.purple, 
      this.fontColor = AppColors.white, 
      this.borderColor = AppColors.green,
      this.onTap = onTap,
      this.label = label;

  NextButtonWidget.transparente({String label, VoidCallback onTap}) 
    : this.backgroundColor = AppColors.white, 
      this.fontColor = AppColors.grey, 
      this.borderColor = AppColors.white,
      this.onTap = onTap,
      this.label = label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          side: MaterialStateProperty.all(BorderSide(color: borderColor))
          ),
        onPressed: onTap,
        child: Text(label, 
          style: GoogleFonts.notoSans(
          fontWeight: FontWeight.w600, 
          fontSize: 15,
          color: fontColor,
        ),),

      ),
    );
  }
}
