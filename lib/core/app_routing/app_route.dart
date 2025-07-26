import 'package:docdoc/core/app_routing/rout_generator.dart';
import 'package:docdoc/core/app_routing/routs.dart';
import 'package:docdoc/shared/thems/apptheme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: "assets/translations",
      startLocale: Locale('en'),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, w) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            onGenerateRoute: RoutGenerator.ongenerateroute,
            initialRoute: AppRouts.onbording,
            themeMode: ThemeMode.light,
            theme: Apptheme.lighttheme,
          );
        },
      ),
    );
  }
}
