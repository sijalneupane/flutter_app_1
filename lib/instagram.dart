import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

class Instagram extends StatelessWidget {
  Instagram({super.key});
  List<Profile> profileList = [
    Profile(
        name: "sijal",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG3Q8YT2XlltY_yT98PFoBcqIFgtDilT-PBg&s"),
    Profile(
        name: "ram",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnGgUdcdoUKFGvx-F4Sugeu8Xz-mPKrajhIA&s"),
    Profile(
        name: "Hari",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG3Q8YT2XlltY_yT98PFoBcqIFgtDilT-PBg&s"),
    Profile(
        name: "Shyam",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnGgUdcdoUKFGvx-F4Sugeu8Xz-mPKrajhIA&s"),
    Profile(
        name: "sijal",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG3Q8YT2XlltY_yT98PFoBcqIFgtDilT-PBg&s"),
    Profile(
        name: "ram",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnGgUdcdoUKFGvx-F4Sugeu8Xz-mPKrajhIA&s"),
    Profile(
        name: "sijal",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG3Q8YT2XlltY_yT98PFoBcqIFgtDilT-PBg&s"),
    Profile(
        name: "ram",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnGgUdcdoUKFGvx-F4Sugeu8Xz-mPKrajhIA&s"),
    Profile(
        name: "sijal",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG3Q8YT2XlltY_yT98PFoBcqIFgtDilT-PBg&s"),
    Profile(
        name: "ram",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnGgUdcdoUKFGvx-F4Sugeu8Xz-mPKrajhIA&s")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Instagram",
                  style: GoogleFonts.cookie(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w300)),
              Container(
                margin: const EdgeInsets.only(top: 2.5, left: 1),
                child: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.favorite_rounded,
              color: Colors.white,
            ),
            SizedBox(width: 15),
            Icon(FontAwesomeIcons.facebookMessenger, color: Colors.white),
            SizedBox(width: 15),
          ],
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 2),
            SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: profileList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Column(
                          children: [
                            CircleAvatar(
                                radius: 34.5,
                                backgroundColor: Colors.red,
                                child: CircleAvatar(
                                    radius: 33,
                                    backgroundColor:
                                        const Color.fromRGBO(0, 0, 0, 1),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(
                                          profileList[index].imageURL!),
                                    ))),
                            SizedBox(height: 5),
                            Text(profileList[index].name!,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15))
                          ],
                        ));
                  },
                )),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd3v30sfJPhPg2HSyg55Ur7X0v7Z7yug5fAQ&s"),
                ),
                SizedBox(width: 8),
                Text("routineofnepalbanda",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 255, 255))),
                Spacer(),
                Icon(Icons.more_vert, color: Colors.white)
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    "https://www.altitudehimalaya.com/media/files/Blog/Culture-Festivals/TeejFestival/Teej-Festival-Celebration-in-Nepal.png",
                    fit: BoxFit.cover,
                  )),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Row(children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                Text("57", style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.comment,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text("3",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                SizedBox(width: 10),
                Icon(Icons.near_me_outlined, color: Colors.white),
                Spacer(),
                Icon(FontAwesomeIcons.comment),
                SizedBox(width: 5),
                Spacer(),
                Icon(Icons.bookmark_border, color: Colors.white)
              ]),
            ),
            Text("routineofnepalbanda",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500)),
            Text(
              "As The greatest festival of women 'Teej' in nepal is coming near, 'Dar Khani' program are being held in daily basis nowadays",
              style: TextStyle(color: Colors.white),
            ),
            Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(
                      "https://w7.pngwing.com/pngs/300/1022/png-transparent-manchester-city-f-c-fa-cup-manchester-derby-west-gorton-premier-league-premier-league-emblem-trademark-sport-thumbnail.png"),
                ),
                SizedBox(width: 8),
                Text("machestercity",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 255, 255))),
                Spacer(),
                Icon(Icons.more_vert, color: Colors.white)
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    "https://cdn.britannica.com/80/237080-050-9682688F/Manchester-City-Football-Club-team-celebrates-with-Premier-League-trophy-championship-May-22-2022.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Row(children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                Text("57", style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.comment,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text("3",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                SizedBox(width: 10),
                Icon(Icons.near_me_outlined, color: Colors.white),
                Spacer(),
                Icon(FontAwesomeIcons.comment),
                SizedBox(width: 5),
                Spacer(),
                Icon(Icons.bookmark_border, color: Colors.white)
              ]),
            ),
            Text("routineofnepalbanda",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500)),
            Text(
              "As The greatest festival of women 'Teej' in nepal is coming near, 'Dar Khani' program are being held in daily basis nowadays",
              style: TextStyle(color: Colors.white),
            ),
            Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(children: [
                CircleAvatar(
                  radius: 11,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6WwgH7Nl5_AW9nDCnR2Ozb_AU3rkIbSJdAg&s"),
                ),
                SizedBox(width: 8),
                Text("google",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 255, 255))),
                Spacer(),
                Icon(Icons.more_vert, color: Colors.white)
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    "https://9series.com/blog/wp-content/uploads/2019/04/Flutter-Future-of-App-Development.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                Text("57", style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.comment,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text("3",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                SizedBox(width: 10),
                Icon(Icons.near_me_outlined, color: Colors.white),
                Spacer(),
                Icon(FontAwesomeIcons.comment),
                SizedBox(width: 5),
                Spacer(),
                Icon(Icons.bookmark_border, color: Colors.white)
              ]),
            ),
            RichText(
                text: const TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    children: [
                  TextSpan(
                      text: "google",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  WidgetSpan(
                      child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    colorClickableText:
                        const Color.fromARGB(255, 174, 172, 172),
                    trimCollapsedText: 'see more',
                    trimExpandedText: 'see less',
                    moreStyle: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 211, 208, 208)),
                    style: TextStyle(color: Colors.white),
                  ))
                ])),
            Divider()
          ]),
        ));
  }
}

class Profile {
  String? name, imageURL;
  Profile({this.name, this.imageURL});
}
