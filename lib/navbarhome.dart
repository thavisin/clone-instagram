import 'package:market/home_page.dart';

import 'const/const.dart';

class Navbarhome extends StatefulWidget {
  const Navbarhome({super.key});

  @override
  State<Navbarhome> createState() => _NavbarhomeState();
}

class _NavbarhomeState extends State<Navbarhome> {
  int selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectindex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              selectindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Container(child: Image.asset(hometap)), label: ''),
            BottomNavigationBarItem(
                icon: Container(child: Image.asset(searchtap)), label: ''),
            BottomNavigationBarItem(
                icon: Container(child: Image.asset(addtap)), label: ''),
            BottomNavigationBarItem(
                icon: Container(height: 24, width: 24, child: reelTap()),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  height: 30,
                  width: 30,
                  child: CircleAvatar(backgroundImage: AssetImage(profile)),
                ),
                label: '')
          ]),
      body: HomePage(),
    );
  }
}
