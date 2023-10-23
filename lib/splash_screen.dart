import 'package:market/const/applogo.dart';
import 'package:market/home_page.dart';
import 'package:market/navbarhome.dart';

import 'const/const.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              Navbarhome(), // Replace 'SecondScreen' with the screen you want to navigate to
        ),
      );
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            100.heightBox,
            logoApp(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                appFrom.text.black.fontFamily(regular).size(18).make(),
                metaLogo()
              ],
            )
          ],
        ),
      ),
    );
  }
}
