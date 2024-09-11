import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

class Instagram extends StatelessWidget {
  Instagram({super.key});
  List<Friends> friendsList = [
    Friends(
        name: "sijal",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG3Q8YT2XlltY_yT98PFoBcqIFgtDilT-PBg&s"),
    Friends(
        name: "manchestercity",
        imageURL:
            "https://w7.pngwing.com/pngs/300/1022/png-transparent-manchester-city-f-c-fa-cup-manchester-derby-west-gorton-premier-league-premier-league-emblem-trademark-sport-thumbnail.png"),
    Friends(
        name: "ram",
        imageURL:
            "https://t3.ftcdn.net/jpg/06/78/09/78/240_F_678097871_G7OpoHQmiZTj4bHB7YW2HoH1syWfCbB9.jpg"),
    Friends(
        name: "Hari",
        imageURL:
            "https://t3.ftcdn.net/jpg/06/93/70/46/240_F_693704641_ghjNhW4qIDOlZzs3IM3cHfjQqgpGeMvt.jpg"),
    Friends(
        name: "Shyam",
        imageURL:
            "https://t4.ftcdn.net/jpg/07/74/51/59/240_F_774515923_P2VwkAL1tnNU9rgWcdpfMrDjajF819st.jpg"),
    Friends(
        name: "ram",
        imageURL:
            "https://t4.ftcdn.net/jpg/02/41/27/81/240_F_241278184_iSZnd6iENF4u6Hq67UgKYKmn6IUlTKo2.jpg"),
    Friends(
        name: "sijal",
        imageURL:
            "https://t4.ftcdn.net/jpg/08/09/72/67/240_F_809726771_AzaQ93lLo2E2xgmuVWQwhGaAJzwU7u97.jpg"),
    Friends(
        name: "sijal",
        imageURL:
            "https://t4.ftcdn.net/jpg/06/84/00/55/240_F_684005517_b2fQiR3tbRwa78ExyoPknsScxmmLurNf.jpg"),
    Friends(
        name: "ram",
        imageURL:
            "https://t4.ftcdn.net/jpg/06/78/09/75/240_F_678097599_iELNPuNsgosnQ1fXgtrhQvdQFdwoJZRa.jpg"),
    Friends(
        name: "sijal",
        imageURL:
            "https://t4.ftcdn.net/jpg/09/06/37/49/240_F_906374929_OPa7BzPpuqON83nHWD9zHYKYfacp28FS.jpg"),
    Friends(
        name: "ram",
        imageURL:
            "https://t4.ftcdn.net/jpg/04/25/21/07/240_F_425210703_HqelPdhBv9d90nl2MVxLb9NqhAndN9BU.jpg"),
    Friends(
        name: "harry",
        imageURL:
            "https://t3.ftcdn.net/jpg/08/32/25/92/240_F_832259268_n5GemoOxblqcSuWfC5nZ2OJ7W6Esruzq.jpg"),
    Friends(
        name: "johnny",
        imageURL:
            "https://live.staticflickr.com/5252/5403292396_0804de9bcf_b.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.black,
            title: Row(
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
              Container(
                height: 35,
                // color: Colors.blue,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(width: 15),
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 2),
                          height: 35,
                          width: 30,
                          // color: Colors.green,
                          child: const Align(
                            alignment: Alignment.bottomLeft,
                            child: Icon(
                              FontAwesomeIcons.facebookMessenger, 
                              color: Colors.white,
                              size: 24,),
                          ),
                        ),
                          const Positioned(top: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.red,
                              child: Text("2",
                              style: TextStyle(color:Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),),
                            ))
                      ]
                    ),
                    const SizedBox(width: 18),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                  height: 105,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: friendsList.length + 1,
                    itemBuilder: (context, index) {
                      return (index == 0)
                          ? Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      const CircleAvatar(
                                        radius: 35,
                                        backgroundImage: NetworkImage(
                                            "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg"),
                                      ),
                                      Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: CircleAvatar(
                                            radius: 12,
                                            backgroundColor: Colors.black,
                                            child: Padding(
                                              padding: EdgeInsets.all(2.0),
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Colors.blue[400],
                                                child:Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                  SizedBox(height: 3),
                                  Text("Your story",
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          overflow: TextOverflow.ellipsis))
                                ],
                              ),
                            )
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: SizedBox(
                                width: 85,
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                        radius: 40,
                                        backgroundColor: Colors.red,
                                        child: CircleAvatar(
                                            radius: 37.5,
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    0, 0, 0, 1),
                                            child: CircleAvatar(
                                              radius: 35,
                                              backgroundImage: NetworkImage(
                                                  friendsList[index - 1]
                                                      .imageURL!),
                                            ))),
                                    SizedBox(height: 3),
                                    Text(friendsList[index - 1].name!,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            overflow: TextOverflow.ellipsis))
                                  ],
                                ),
                              ));
                    },
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 15, bottom: 6),
              child: Row(children: [
                CircleAvatar(
                  radius: 13,
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
                Text("12k", style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.comment,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text("102",
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
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      children: [
                    TextSpan(
                        text: "routineofnepalbanda",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    WidgetSpan(
                        child: ReadMoreText(
                      "As The greatest festival of women 'Teej' in nepal is coming near, 'Dar Khani' program are being held in daily basis nowadays. ",
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
            ),
            const Padding(
              padding:
                  const EdgeInsets.only(top: 0, left: 10, right: 8, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("View all comments",
                style: TextStyle(
                        color: const Color.fromARGB(255, 162, 162, 162),
                        fontSize: 13),),
                  Text(
                    "7 days ago",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 162, 162, 162),
                        fontSize: 13),
                  ),
                ],
              ),
            ),
            // Divider(),

            const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 15, bottom: 6),
              child: Row(children: [
                CircleAvatar(
                  radius: 13,
                  backgroundImage: NetworkImage(
                      "https://w7.pngwing.com/pngs/300/1022/png-transparent-manchester-city-f-c-fa-cup-manchester-derby-west-gorton-premier-league-premier-league-emblem-trademark-sport-thumbnail.png"),
                ),
                SizedBox(width: 8),
                Text("manchestercity",
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
                Text("999k", style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Icon(
                  FontAwesomeIcons.comment,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text("16k",
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
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      children: [
                    TextSpan(
                        text: "manchestercity",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    WidgetSpan(
                        child: ReadMoreText(
                      "We cant wait to make it 5 in a row 😋💙. Next week we will be facing Brenford at home. See you all there after international break.",
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
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 0, left: 8, right: 8, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("View all comments",
                style: TextStyle(
                        color: const Color.fromARGB(255, 162, 162, 162),
                        fontSize: 13),),
                  Text("23 hours ago",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 162, 162, 162),
                        fontSize: 13),
                  ),
                ],
              ),
            ),
            // Divider(),

            const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 15, bottom: 6),
              child: Row(children: [
                CircleAvatar(
                  radius: 13,
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
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
              child: RichText(
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
            ),
            const Padding(
              padding:
                  const EdgeInsets.only(top: 0, left: 10, right: 8, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("View all comments",
                style: TextStyle(
                        color: const Color.fromARGB(255, 162, 162, 162),
                        fontSize: 13),),
                  Text(
                    "2 minutes ago",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 162, 162, 162),
                        fontSize: 13),
                  ),
                ],
              ),
            ),
            // Divider()
          ]),
        ));
  }
}

class Friends {
  String? name, imageURL;
  Friends({this.name, this.imageURL});
}
