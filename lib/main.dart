import 'package:market/splash_screen.dart';

import 'const/const.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          primaryColor:
              Color.fromRGBO(255, 255, 255, 1), // Set the primary color
          scaffoldBackgroundColor: Colors.white, // Set the background color
        ),
        debugShowCheckedModeBanner: false,
        home: SafeArea(child: Splash_screen()));
  }
}
