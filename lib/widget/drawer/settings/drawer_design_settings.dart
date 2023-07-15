part of '../../../imports/app_imports.dart';

class DrawerDesignSettings extends StatelessWidget {
  const DrawerDesignSettings(
      {Key? key,
      required this.title,
      this.svg_icon,
      this.lottie_file,
      this.onTap,
      this.trailing})
      : super(key: key);
  final String title;
  final SvgPicture? svg_icon;
  final LottieBuilder? lottie_file;
  final void Function()? onTap;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: AppDime.lg, fontWeight: FontWeight.bold),
      ),
      // leading: svg_icon,
      leading: lottie_file,
      onTap: () => onTap,
      trailing: trailing,
    );
  }
}
