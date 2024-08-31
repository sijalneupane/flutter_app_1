import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FutsalBooking extends StatelessWidget {
  FutsalBooking({super.key});

  List<String> timeList = [
    "5 AM - 6 AM ",
    "6 AM - 7 AM ",
    "7 AM - 8 AM ",
    "8 AM - 9 AM ",
    "9 AM - 10 AM ",
    "10 AM - 11 AM ",
    "11 AM - 12 AM ",
    "12 PM - 1 PM ",
  ];

  List<FutsalInfo> futsalList = [
    FutsalInfo(
        futsalImage:
            "https://5.imimg.com/data5/SELLER/Default/2021/6/ML/ZX/SH/3103550/futsal-turf-500x500.jpg",
        futsalName: "Royal Futsal",
        futsalLocation: "28 Kilo, Dhulikhel",
        bookingPrice: 600),
    FutsalInfo(
        futsalImage: "https://goalnepal.com/uploads/news/1627182357.jpg",
        futsalName: "Banepa Futsal",
        futsalLocation: "Pulbazar, Banepa",
        bookingPrice: 800),
    FutsalInfo(
        futsalImage:
            "https://the-anfa.com/storage/images/news/futsal-news_1611562395.jpg",
        futsalName: "SR Futsal",
        futsalLocation: "Khadpu, Dhulikhel",
        bookingPrice: 1000),
    FutsalInfo(
        futsalImage:
            "https://www.myholidaynepal.com/blog/images/blogimage/Maidan--Futsal-20130717231215.jpg",
        futsalName: "NextStep Futsal",
        futsalLocation: "Tindobato, Banepa",
        bookingPrice: 1200),
    FutsalInfo(
        futsalImage: "https://goalnepal.com/uploads/news/1627182357.jpg",
        futsalName: "Nala Futsal",
        futsalLocation: "Nala, Banepa",
        bookingPrice: 900),
    FutsalInfo(
        futsalImage:
            "https://the-anfa.com/storage/images/news/futsal-news_1611562395.jpg",
        futsalName: "Ramro Futsal",
        futsalLocation: "Khopasi, Panauti",
        bookingPrice: 1200),
    FutsalInfo(
        futsalImage: "https://goalnepal.com/uploads/news/1627182357.jpg",
        futsalName: "Chadani Futsal",
        futsalLocation: "Chardobato, Banepa",
        bookingPrice: 1000),
    FutsalInfo(
        futsalImage: "https://goalnepal.com/uploads/news/1627182357.jpg",
        futsalName: "Janagal Futsal",
        futsalLocation: "Janagal, Banepa",
        bookingPrice: 1200),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Booking"),
        titleSpacing: 0,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 65,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: timeList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 8),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 84, 136, 127),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: Text(timeList[index],
                            style: GoogleFonts.quicksand(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                    );
                  }),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - (65 + 56),
              child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 40),
                  scrollDirection: Axis.vertical,
                  itemCount: futsalList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          //     border: Border.all(
                          //   color: Colors.yellow,
                          //   width: 5.0,
                          // ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: -5,
                              blurRadius: 9,
                              offset: Offset(0, 5),
                            )
                          ]),
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 55,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        futsalList[index].futsalImage!),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(futsalList[index].futsalName!),
                                SizedBox(height: 5),
                                Container(
                                  width: 115,
                                  child: Text(
                                    futsalList[index].futsalLocation!,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                )
                              ]),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Text(futsalList[index].bookingPrice!.toString()),
                              SizedBox(
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Book"),
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0),
                                      backgroundColor: const Color.fromARGB(
                                          255, 84, 136, 127),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class FutsalInfo {
  String? futsalImage, futsalName, futsalLocation;
  int? bookingPrice;

  FutsalInfo(
      {this.futsalImage,
      this.futsalName,
      this.futsalLocation,
      this.bookingPrice});
}
