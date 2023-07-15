part of '../imports/app_imports.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: AppLang.isAr(context)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.bgGrey,
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/app_logo.png'),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'عبدالله الصلاح',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      AppLangKey.about_Theapp.tr(),
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'تُقَدِّمُ لكم "\طقس بلاد الشام"\،\n'
                      'التطبيق الجوي الضروري الذي يزودكم بتحديثات فورية ودقيقة لحالة الطقس في منطقة الشرق الأوسط.'
                      '\n'
                      'يتميز "\طقس بلاد الشام"\ بواجهة بسيطة وسهلة الاستخدام\،'
                      '\n'
                      'حيث يعرض الأحوال الجوية الحالية وتوقعات الأيام الخمسة الماضية وتوقعات طويلة المدى بطريقة سهلة ومباشرة.'
                      '\n'
                      'ابقوا على اطلاع على درجات الحرارة وفرص الهطول وسرعة الرياح والمزيد\،'
                      '\n'
                      ' كل ذلك على بُعد نقرة واحدة.'
                      '\n'
                      ' واء كنتم تخططون ليومكم أو تستعدون لرحلة،'
                      '\n'
                      'طقس بلاد الشام" يضمن لكم أن تكونوا دائمًا على استعداد لما تجلبه الطقس".',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/app_logo.png'),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Abdullah AlSalah',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      AppLangKey.about_Theapp.tr(),
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Introducing LevantWeather,\n'
                      ' the must-have weather app that provides you with instant and accurate weather updates for Levant region.\n'
                      ' With a clean and user-friendly interface,\n'
                      ' LevantWeather delivers current conditions,\n'
                      ' last 5 days forecasts,\n'
                      ' and extended outlooks in a simple and straightforward manner.\n'
                      ' Stay informed about temperature, precipitation, wind speed,\n'
                      ' and more, all at your fingertips.\n'
                      'Whether you\'re planning your day or preparing for a trip\,'
                      'LevantWeather ensures you\'re always ready for whatever the weather brings.\n',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
