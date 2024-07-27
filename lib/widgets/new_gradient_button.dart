import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NewGradientButton extends StatelessWidget {
  final String label;
  const NewGradientButton({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.h,
      decoration: ShapeDecoration(
        gradient: ColorsClass.themeBlueGradient,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: GoogleFonts.poppins(
              color: ColorsClass.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
