import 'const.dart';

Widget logoApp() {
  return Image.asset(loGo).box.height(100).width(100).make();
}

Widget metaLogo() {
  return Image.asset(metaloGo).box.height(70).width(120).make();
}

Widget instagramloGo() {
  return Image.asset(instagramLogo)
      .box
      .height(28)
      .width(105)
      .make()
      .onTap(() {});
}
