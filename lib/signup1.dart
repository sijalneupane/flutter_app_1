import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Signup1 extends StatelessWidget {
  Signup1({super.key});

  @override
  Widget build(BuildContext context) {
    // int _currentIndex = 0; // Track the current index
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const Text(
                "Sign up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              const Text("Require information to account creations"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CarouselSlider(
                items: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          // style: TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38),
                                borderRadius: BorderRadius.circular(7)),
                            contentPadding: EdgeInsets.all(12),
                            labelText: "First Name",
                            labelStyle: TextStyle(color: Colors.black26),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),
                        TextFormField(
                          // style: TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(7)),
                            contentPadding: EdgeInsets.all(12),
                            labelText: "Last Name",
                            labelStyle: TextStyle(color: Colors.black26),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),
                        TextFormField(
                          // style: TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(7)),
                            contentPadding: EdgeInsets.all(12),
                            labelText: "Registration Number",
                            labelStyle: TextStyle(color: Colors.black26),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            // style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black38),
                                    borderRadius: BorderRadius.circular(7)),
                                contentPadding: EdgeInsets.all(12),
                                labelText: "Email",
                                labelStyle: TextStyle(color: Colors.black26),
                                suffixIcon:
                                    Icon(Icons.email, color: Colors.black38)),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.04),
                          TextFormField(
                            // style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(7)),
                                contentPadding: EdgeInsets.all(12),
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.black26),
                                suffixIcon: Icon(Icons.visibility_off,
                                    color: Colors.black38)),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.04),
                          TextFormField(
                            // style: TextStyle(color: Colors.blue),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(7)),
                                contentPadding: EdgeInsets.all(12),
                                labelText: "Confirm Password",
                                labelStyle: TextStyle(color: Colors.black26),
                                suffixIcon: Icon(Icons.visibility_off,
                                    color: Colors.black38)),
                          ),
                        ]),
                  )
                ].toList(),
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.3,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    // This is a stateless widget, so state can't be updated here
                    // Instead, you'd need to pass the current index to the DotIndicator
                    // _currentIndex = index;
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Continue",
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red[700]),
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Row(
                children: [
                  Expanded(child: Text("Already have an account? ")),
                  InkWell(
                      onTap: () {
                        print("Pressed");
                      },
                      child: Row(
                        children: [
                          Text(
                            "LOGIN",
                            style: TextStyle(color: Colors.red),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.015,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                            color: Colors.red,
                          )
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
