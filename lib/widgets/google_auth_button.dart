import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleAuthButton extends StatelessWidget {
  const GoogleAuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
              width: 1, color: ColorsClass.lightmodeNeutral500),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Center(
        child: Text(
          "Sign in with Google",
          style: GoogleFonts.poppins(
              color: ColorsClass.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
