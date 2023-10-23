import 'const.dart';

Widget messagerIcon() {
  return Image.asset(messanger).box.height(50).width(50).make();
}

Widget likeIcon() {
  return Image.asset(like).box.height(28).width(28).make().opacity75();
}

Widget add_ring() {
  return Image.asset(addRing).box.make();
}

Widget muSic() {
  return Image.asset(music).box.height(16).width(16).make();
}

Widget comMent() {
  return Image.asset(commenticon).box.height(40).width(40).make();
}

Widget seNd() {
  return Image.asset(send).box.height(28).width(28).make();
}

Widget reelTap() {
  return Image.asset(reelstap)
      .box
      .height(30)
      .width(30)
      .make()
      .opacity(value: 0.6);
}

Widget homeTap() {
  return Image.asset(hometap)
      .box
      .height(30)
      .width(30)
      .make()
      .opacity(value: 0.6);
}

Widget searchTap() {
  return Image.asset(searchtap)
      .box
      .height(30)
      .width(30)
      .make()
      .opacity(value: 0.6);
}

Widget addTap() {
  return Image.asset(addtap)
      .box
      .height(30)
      .width(30)
      .make()
      .opacity(value: 0.6);
}
