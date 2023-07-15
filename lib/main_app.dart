part of '../../imports/app_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await localized.EasyLocalization.ensureInitialized();

  runApp(localized.EasyLocalization(
      supportedLocales: AppLangConfig.supportLocale,
      path: AppLangConfig.langpath,
      startLocale: Locale(ken),
      fallbackLocale: Locale(
        ken,
      ),
      child: app_store_main()));
  // FlutterNativeSplash.remove();
}

class app_store_main extends StatefulWidget {
  const app_store_main({Key? key}) : super(key: key);

  @override
  State<app_store_main> createState() => _app_store_mainState();
}

class _app_store_mainState extends State<app_store_main> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ManageTheme>(
          create: (manageTheme) => ManageTheme(),
        ),
        ChangeNotifierProvider<Manage_Tempture>(
          create: (manage_Temp) => Manage_Tempture(),
        ),
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          builder: (context, child) {
            final ManageTheme manageTheme = Provider.of<ManageTheme>(context);
            final Manage_Tempture manage_Temp =
                Provider.of<Manage_Tempture>(context);

            return GetMaterialApp(
              title: AppLangKey.appname,
              debugShowCheckedModeBanner: false,
              // home: const Page_spalsh(),
              // home: Splash_Page(),

              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,

              //* theme
              // theme: ThemeData.light()
              //     .copyWith(scaffoldBackgroundColor: Colors.blue),
              theme: AppThemeChoose.lightTheme(context),
              darkTheme: AppThemeChoose.darkTheme(context),
              // themeMode: ThemeMode.dark,
              themeMode: manageTheme.themeMode,
              //  AppThemeChoose.darkTheme(context),
              // darkTheme:
              //     ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.red),
              // themeMode: ThemeMode.light,

              //* root (/)
              // initialRoute: Splash_Page.routename,
              // initialRoute: '/',
              // routes: AppRoutes.route,
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
          }),
    );
  }
}
