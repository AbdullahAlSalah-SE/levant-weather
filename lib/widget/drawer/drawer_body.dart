part of '../../imports/app_imports.dart';

class Drawer_body extends StatelessWidget {
  const Drawer_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: WaveBackground(
      firstColor:
          AppTheme.isDark(context) ? AppColors.bgCursor : AppColors.bgWhite,
      secondColor: AppTheme.isDark(context)
          ? AppColors.blackCardSocial
          : AppColors.quran_Dark_blue,
      child: Column(
        children: [
          Profile_drawer(),
          Divider(
              color: AppTheme.isDark(context)
                  ? AppColors.bgWhite
                  : AppColors.bgBlack.withOpacity(0.8)),
          Settings_drawer(),
        ],
      ),
    ));
  }
}
