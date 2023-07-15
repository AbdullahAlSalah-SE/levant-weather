import 'package:flutter/material.dart';
import './imports/app_imports.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(EasyLocalization(
      supportedLocales: AppLangConfig.supportLocale,
      path: AppLangConfig.langpath,
      startLocale: Locale(kar),
      fallbackLocale: Locale(
        kar,
      ),
      child: App_Restart(child: const app_store_main())));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Splash_Page(),
      // initialRoute: Splash_Page.routename,
      initialRoute: '/',

      getPages: [
        GetPage(
          name: '/',
          page: () => Splash_Page(),
          binding: HomeBinding(context),
        ),
        GetPage(
          name: '/second',
          page: () => Home_page(),
          binding: HomeBinding(context),
        ),
        GetPage(
          name: '/second',
          page: () => AboutScreen(),
          binding: HomeBinding(context),
        )
      ],
    );
  }
}
