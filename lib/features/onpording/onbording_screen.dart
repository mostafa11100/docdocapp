import 'package:docdoc/core/constants/assets.dart';
import 'package:docdoc/core/constants/local_keys.dart';
import 'package:docdoc/core/constants/textstyle.dart';
import 'package:docdoc/features/onpording/widgets/doctor_background.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,

          child: Padding(
            padding: EdgeInsets.only(
              top: 35.h,
              left: 20,
              right: 20,
              bottom: 15,
            ),
            child: Column(
              children: [
                imageandappname(),
                SizedBox(height: 40.h),
                Doctorandbackground(),
                SizedBox(height: 14),
                Text(
                  AppKeys.ksManageandscheduleallofyour.tr(),
                  style: TextstyleCustom.text11greyfont,
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.0.w),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      minimumSize: Size(
                        MediaQuery.of(context).size.width,
                        58.h,
                      ),
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      AppKeys.ksgetstarted.tr(),
                      style: TextstyleCustom.text16whit600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
