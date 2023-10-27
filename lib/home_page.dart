import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'const/const.dart';
import 'navbarhome.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedIndex = 0;
  List<bool> iSlike = [false, false, false, false];
  List<bool> iSbook = [false, false, false, false];
  final FocusNode _textFieldFocus = FocusNode();

  @override
  void dispose() {
    _textFieldFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          20.widthBox,
                          instagramloGo(),
                        ],
                      ),
                      Row(
                        children: [likeIcon(), 10.widthBox, messagerIcon()],
                      )
                    ],
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          10.widthBox,
                          Column(
                            children: [
                              20.heightBox,
                              Stack(
                                children: [
                                  20.widthBox,
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                    double avatarSize =
                                        constraints.maxWidth * 0.3;

                                    return CircleAvatar(
                                      backgroundImage: AssetImage(profile),
                                      radius: 40,
                                    );
                                  }),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                    double leftmarginValue =
                                        MediaQuery.of(context).size.width * 0.1;
                                    double topmarginValue =
                                        MediaQuery.of(context).size.width * 0.1;
                                    return Container(
                                      margin: EdgeInsets.only(
                                          top: topmarginValue,
                                          left: leftmarginValue),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: add_ring(),
                                        color: Colors.white,
                                        iconSize: 30,
                                      ),
                                    );
                                  })
                                ],
                              ),
                              10.heightBox,
                              Text("Your story")
                                  .text
                                  .fontFamily(regular)
                                  .size(14)
                                  .make(),
                            ],
                          ),
                          ...List.generate(story.length, (index) {
                            return Column(children: [
                              Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.purple,
                                      Colors.pink,
                                      Colors.orange,
                                      Colors.yellow
                                    ],
                                  ),
                                ),
                                margin: EdgeInsets.only(
                                  left: 8,
                                  right: 8,
                                  top: 20,
                                ),
                                child: DashedCircle(
                                  gapSize: 0,
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: DashedCircle(
                                      gapSize: 0,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: EdgeInsets.all(1),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              '${story[index]['img']}'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 11),
                                  child: Text("${story[index]['name']}"))
                            ]);
                          }),
                        ],
                      )),
                ),
                ...List.generate(post.length, (index) {
                  return Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Divider(
                          height: 2,
                          color: Colors.black26,
                        ),
                        ListTile(
                          isThreeLine: false,
                          title: Text(
                            "${post[index]['name']}",
                            style: TextStyle(
                                fontFamily: bold, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Row(
                            children: [
                              Container(
                                width: 18,
                                height: 18,
                                margin: EdgeInsets.all(1),
                                child: Padding(
                                  padding: EdgeInsets.all(1.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(
                                        "${post[index]['subnamea']}"),
                                  ),
                                ),
                              ),
                              3.widthBox,
                              Text("${post[index]['subnameb']}")
                            ],
                          ),
                          trailing: InkWell(
                            onTap: () {},
                            child: Icon(Icons.more_vert),
                          ),
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.purple,
                                  Colors.pink,
                                  Colors.orange,
                                  Colors.yellow
                                ],
                              ),
                            ),
                            child: DashedCircle(
                              gapSize: 0,
                              child: Padding(
                                padding: EdgeInsets.all(3),
                                child: DashedCircle(
                                  gapSize: 0,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.all(0.5),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('${post[index]['logo']}'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        ImageSlideshow(
                          width: double.infinity,
                          height: 400,
                          initialPage: 0,
                          indicatorColor: Colors.blue,
                          indicatorBackgroundColor: Colors.grey,
                          children: [
                            Image.asset(
                              '${post[index]['img1']}',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              '${post[index]['img2']}',
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  index == 0
                                      ? Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  iSlike[index] = !iSlike[
                                                      index]; // Toggle the like state for the current item
                                                });
                                              },
                                              icon: Icon(
                                                iSlike[index]
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                size: 30,
                                                color: iSlike[index]
                                                    ? Colors.red
                                                    : Colors.black,
                                              ),
                                            ),
                                            Text("${post[index]['likes']}")
                                          ],
                                        )
                                      : index == 1
                                          ? Row(
                                              children: [
                                                IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      iSlike[index] = !iSlike[
                                                          index]; // Toggle the like state for the current item
                                                    });
                                                  },
                                                  icon: Icon(
                                                    iSlike[index]
                                                        ? Icons.favorite
                                                        : Icons.favorite_border,
                                                    size: 30,
                                                    color: iSlike[index]
                                                        ? Colors.red
                                                        : Colors.black,
                                                  ),
                                                ),
                                                Text("${post[index]['likes']}")
                                              ],
                                            )
                                          : index == 2
                                              ? Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          iSlike[index] = !iSlike[
                                                              index]; // Toggle the like state for the current item
                                                        });
                                                      },
                                                      icon: Icon(
                                                        iSlike[index]
                                                            ? Icons.favorite
                                                            : Icons
                                                                .favorite_border,
                                                        size: 30,
                                                        color: iSlike[index]
                                                            ? Colors.red
                                                            : Colors.black,
                                                      ),
                                                    ),
                                                    Text(
                                                        "${post[index]['likes']}")
                                                  ],
                                                )
                                              : index == 3
                                                  ? Row(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              iSlike[index] =
                                                                  !iSlike[
                                                                      index]; // Toggle the like state for the current item
                                                            });
                                                          },
                                                          icon: Icon(
                                                            iSlike[index]
                                                                ? Icons.favorite
                                                                : Icons
                                                                    .favorite_border,
                                                            size: 30,
                                                            color: iSlike[index]
                                                                ? Colors.red
                                                                : Colors.black,
                                                          ),
                                                        ),
                                                        Text(
                                                            "${post[index]['likes']}")
                                                      ],
                                                    )
                                                  : Container(),
                                  Row(
                                    children: [
                                      Stack(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: comMent()),
                                          Container(
                                              margin: EdgeInsets.only(
                                                  left: 42, top: 15),
                                              child: Text(
                                                  "${post[index]['commentNumber']}"))
                                        ],
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    padding: EdgeInsets.only(bottom: 7),
                                    onPressed: () {},
                                    icon: seNd(),
                                  ),
                                ],
                              ),
                              index == 0
                                  ? IconButton(
                                      onPressed: () {
                                        setState(() {
                                          iSbook[index] = !iSbook[
                                              index]; // Toggle the like state for the current item
                                        });
                                      },
                                      icon: Icon(
                                        iSbook[index]
                                            ? Icons.bookmark
                                            : Icons.bookmark_border,
                                        size: 30,
                                        color: iSbook[index]
                                            ? Colors.black
                                            : Colors.black,
                                      ),
                                    )
                                  : index == 1
                                      ? IconButton(
                                          onPressed: () {
                                            setState(() {
                                              iSbook[index] = !iSbook[
                                                  index]; // Toggle the like state for the current item
                                            });
                                          },
                                          icon: Icon(
                                            iSbook[index]
                                                ? Icons.bookmark
                                                : Icons.bookmark_border,
                                            size: 30,
                                            color: iSbook[index]
                                                ? Colors.black
                                                : Colors.black,
                                          ),
                                        )
                                      : index == 2
                                          ? IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  iSbook[index] = !iSbook[
                                                      index]; // Toggle the like state for the current item
                                                });
                                              },
                                              icon: Icon(
                                                iSbook[index]
                                                    ? Icons.bookmark
                                                    : Icons.bookmark_border,
                                                size: 30,
                                                color: iSbook[index]
                                                    ? Colors.black
                                                    : Colors.black,
                                              ),
                                            )
                                          : index == 3
                                              ? IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      iSbook[index] = !iSbook[
                                                          index]; // Toggle the like state for the current item
                                                    });
                                                  },
                                                  icon: Icon(
                                                    iSbook[index]
                                                        ? Icons.bookmark
                                                        : Icons.bookmark_border,
                                                    size: 30,
                                                    color: iSbook[index]
                                                        ? Colors.black
                                                        : Colors.black,
                                                  ),
                                                )
                                              : Container(),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 50),
                                  height: 20,
                                  width: 20,
                                  child: DashedCircle(
                                    gapSize: 0,
                                    color: Colors.white,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(img04),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 35),
                                  height: 20,
                                  width: 20,
                                  child: DashedCircle(
                                    gapSize: 0,
                                    color: Colors.white,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(img02),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  height: 20,
                                  width: 20,
                                  child: DashedCircle(
                                    gapSize: 0,
                                    color: Colors.white,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(img03),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            10.widthBox,
                            Container(
                              child:
                                  likeb.text.black.fontFamily(regular).make(),
                            ),
                            3.widthBox,
                            Container(
                              child: Text(
                                "${post[0]['name']}",
                                style: TextStyle(
                                    fontFamily: bold,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            3.widthBox,
                            Container(
                              child: and.text.black.fontFamily(regular).make(),
                            ),
                            3.widthBox,
                            Container(
                              child: Text(
                                "others",
                                style: TextStyle(
                                    fontFamily: bold,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20, top: 5),
                            child: Row(
                              children: [
                                Text(
                                  "${post[index]['name']}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "${post[index]['comment']}",
                                ),
                              ],
                            )),
                        Row(
                          children: [
                            20.widthBox,
                            viewcomment.text.gray400
                                .fontFamily(regular)
                                .size(16)
                                .make(),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5, left: 18),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(profile),
                              ),
                            ),
                            10.widthBox,
                            Container(
                              height: 50,
                              width: 150,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Add a comment...",
                                    border: InputBorder.none),
                                style: TextStyle(
                                    color: Colors.grey[400], fontSize: 16),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            20.widthBox,
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Text(
                                    "${post[index]['time']}",
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 10),
                                  ),
                                  Text(
                                    " • See translation",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
