part of '../../../imports/app_imports.dart';

class Settings_drawer extends StatelessWidget {
  const Settings_drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //* my app
        AppDime.lg.verticalSpace,

        //*Theme
        DrawerDesignSettings(
          onTap: () {
            print('object');
          },
          title: AppLangKey.dark_mod.tr(),
          // svg_icon:
          //     AppTheme.isDark(context) ? AppSvg.dark_theme : AppSvg.light_theme,
          lottie_file: LottieBuilder.asset(
            App_lottie_images.dark_mode,

            // width: 80,
            height: 130,
          ),
          trailing: DrawerTheme(),
        ),
        SizedBox(
          height: 10,
        ),
        DrawerDesignSettings(
          title: AppLangKey.language.tr(),
          lottie_file: LottieBuilder.asset(
            App_lottie_images.lang,
            // width: 80,
            // height: 120,
          ),
          trailing: Drawer_Lang(),
        ),

        SizedBox(
          height: 10,
        ),
        DrawerDesignSettings(
          onTap: () {
            print('object');
          },
          title: "\u2103/\u2109",
          lottie_file: LottieBuilder.asset(
            height: 50,
            App_lottie_images.temperature,
          ),
          trailing: TemptureTheme(),
        ),

        ListTile(
          title: Text(
            AppLangKey.about_Theapp.tr(),
            style: TextStyle(fontSize: AppDime.lg, fontWeight: FontWeight.bold),
          ),
          // leading: svg_icon,
          leading: LottieBuilder.asset(
            height: 50,
            App_lottie_images.about,
          ),
          onTap: () {
            print('object');

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AboutScreen()));
          },
        ),
        ListTile(
          title: Text(
            AppLangKey.rate_theapp.tr(),
            style: TextStyle(fontSize: AppDime.lg, fontWeight: FontWeight.bold),
          ),
          leading: LottieBuilder.asset(
            height: 50,
            App_lottie_images.rateusu_light,
          ),
          onTap: () async {
            if (!await launchUrl(Applists.applink,
                mode: LaunchMode.externalApplication)) {
              throw 'Could not launch ${Applists.applink}';
            }
          },
        ),
        ListTile(
          title: Text(
            'Githup',
            style: TextStyle(fontSize: AppDime.lg, fontWeight: FontWeight.bold),
          ),
          leading: LottieBuilder.asset(
            height: 50,
            App_lottie_images.github,
          ),
          onTap: () async {
            if (!await launchUrl(Applists.my_githup_url,
                mode: LaunchMode.externalApplication)) {
              throw 'Could not launch ${Applists.my_githup_url}';
            }
          },
        ),
      ],
    );
  }
}
