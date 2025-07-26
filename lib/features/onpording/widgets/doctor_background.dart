import 'package:docdoc/core/constants/assets.dart';
import 'package:docdoc/core/constants/local_keys.dart';
import 'package:docdoc/core/constants/textstyle.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Doctorandbackground extends StatelessWidget {
  const Doctorandbackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          SvgPicture.asset(AppAssets.splashiimage),
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                stops: [.20, .90],
              ),
            ),
            child: Image.asset(AppAssets.doctorimage),
          ),
          Positioned(
            bottom: 5.h,
            left: 10,
            right: 10,
            child: Text(
              AppKeys.ksBestDoctorAppointmentApp.tr(),
              style: TextstyleCustom.text35bluefont700,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class imageandappname extends StatelessWidget {
  const imageandappname({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10.w,
      children: [
        SvgPicture.asset(AppAssets.appicon),

        Text(AppKeys.ksDocDoc.tr(), style: TextstyleCustom.text26fontbold),
      ],
    );
  }
}
