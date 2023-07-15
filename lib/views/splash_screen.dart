part of '../imports/app_imports.dart';

class Splash_Page extends StatefulWidget {
  const Splash_Page({Key? key}) : super(key: key);
  static const routename = "/";

  @override
  _Splash_PageState createState() => _Splash_PageState();
}

class _Splash_PageState extends State<Splash_Page>
    with TickerProviderStateMixin {
  late AnimationController _lottieAnimation;
  var expanded = false;
  double _bigFontSize = kIsWeb ? 234 : 178;
  final transitionDuration = Duration(seconds: 1);

  @override
  void initState() {
    _lottieAnimation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    Future.delayed(Duration(seconds: 1))
        .then((value) => setState(() => expanded = true))
        .then((value) => Duration(seconds: 1))
        .then(
          (value) => Future.delayed(Duration(seconds: 1)).then(
            (value) => _lottieAnimation.forward().then(
                  (value) => Navigator.of(context as BuildContext)
                      .pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => Home_page()),
                          (route) => false),
                ),
          ),
        );
    super.initState();
  }

  @override
  dispose() {
    _lottieAnimation.dispose(); // you need this
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        // color: Color(0xFF000000),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(App_images.splash_background))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: transitionDuration,
              curve: Curves.fastOutSlowIn,
              style: TextStyle(
                color: Color(0xFF02888D),
                fontSize: !expanded ? _bigFontSize : 50,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
              child: Text(
                "\ ${AppLangKey.levant.tr()}",
              ),
            ),
            AnimatedCrossFade(
              firstCurve: Curves.fastOutSlowIn,
              crossFadeState: !expanded
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: transitionDuration,
              firstChild: Container(),
              secondChild: _logoRemainder(),
              alignment: Alignment.centerLeft,
              sizeCurve: Curves.easeInOut,
            ),
          ],
        ),
      ),
    );
  }

  Widget _logoRemainder() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "${AppLangKey.weather.tr()}",
          style: TextStyle(
            color: Color(0xFFFAFAFA),
            fontSize: 40,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        LottieBuilder.asset(
          'assets/Lottie json files/weather_logo_startup.json',
          onLoaded: (composition) {
            _lottieAnimation..duration = composition.duration;
          },
          frameRate: FrameRate.max,
          repeat: false,
          animate: false,
          height: 200,
          width: 200,
          controller: _lottieAnimation,
        )
      ],
    );
  }
  //
  // Widget _logoAbbreviated() {
  //   return Container(
  //     // color: Colors.blue,
  //     height: 150,
  //     child: Row(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [],
  //     ),
  //   );
  // }
  //
  // Widget _logoExtended() {
  //   return Container(
  //     height: 150,
  //     child: Row(
  //       // mainAxisSize: MainAxisSize.min,
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       children: [
  //         Expanded(
  //           child: Text(
  //             "HOWTIME",
  //             // textAlign: TextAlign.center,
  //             maxLines: 1,
  //             style: Theme.of(context).textTheme.headline3!.merge(GoogleFonts.montserrat()),
  //           ),
  //         ),
  //         LottieBuilder.asset(
  //           'assets/food.json',
  //           onLoaded: (composition) {
  //             _lottieAnimation..duration = composition.duration;
  //           },
  //           frameRate: FrameRate.max,
  //           repeat: false,
  //           animate: false,
  //           height: 100,
  //           width: 100,
  //           controller: _lottieAnimation,
  //         )
  //       ],
  //     ),
  //   );
  // }
}
