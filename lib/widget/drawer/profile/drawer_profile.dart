part of '../../../imports/app_imports.dart';

class Profile_drawer extends StatelessWidget {
  const Profile_drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppTheme.isDark(context)
            ? Colors.blueGrey
            : AppColors.quran_Dark_blue,
        child: Stack(
          alignment: Alignment.centerLeft,
          fit: StackFit.loose,
          children: <Widget>[
            Container(
              width: AppDime.xxlg_8.w,
              child:
                  LottieBuilder.asset(App_lottie_images.drawer_prog_background),
            ),
            Align(
                alignment: AlignmentDirectional.centerStart,
                // width: AppDime.xxlg,
                // left: 50,
                // right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: AppDime.md),
                      // width: AppDime.xlg.w,
                      height: AppDime.xxlg_8.h,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        shape: BoxShape.circle,
                      ),
                      child: LottieBuilder.asset(AppTheme.isDark(context)
                          ? App_lottie_images.weather_night_clear_sky_dark
                          : App_lottie_images.weather_day_clear_sky),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          AppLangKey.app_name.tr(),
                          style: TextStyle(
                              fontSize: AppDime.lg_2,
                              fontWeight: FontWeight.w900,
                              color: AppTheme.isDark(context)
                                  ? AppColors.bgBlack
                                  : AppColors.bgWhite),
                        ),
                        AppDime.md.verticalSpace,
                        Text(
                          'by abdullah salalh',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: AppDime.lg,
                            fontWeight: FontWeight.w900,
                            color: AppTheme.isDark(context)
                                ? AppColors.bgBlack
                                : AppColors.bgWhite,
                          ),
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
