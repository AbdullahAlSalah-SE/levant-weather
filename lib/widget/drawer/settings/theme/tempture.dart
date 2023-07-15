part of '../../../../imports/app_imports.dart';

class TemptureTheme extends StatelessWidget {
  const TemptureTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * Provider Theme
    final Manage_Tempture managetemp = Provider.of<Manage_Tempture>(context);

    return Switch(
      value: Manage_Tempture.tempture,
      onChanged: managetemp.updateTemp,
    );
  }
}
