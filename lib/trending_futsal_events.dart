import 'package:flutter/material.dart';

class TrendingFutsalEvents extends StatelessWidget {
  TrendingFutsalEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Search Bar"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [Text("Trending events"), Spacer(), Text("See all")],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 1),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                                height: 100,
                                width: MediaQuery.of(context).size.width,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0oXcjIpX4AGEYO796M_cJYpBcOu1PrKQUsQ&usqp=CAU",fit: BoxFit.cover,),
                                
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage: NetworkImage(
                                        "https://www.shareicon.net/data/512x512/2016/05/26/771204_man_512x512.png"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Banepa Futsal"),
                                  Spacer(),
                                  Icon(Icons.location_on_outlined),
                                  Text("Banepa")
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
