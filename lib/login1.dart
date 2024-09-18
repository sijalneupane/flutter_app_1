import 'package:flutter/material.dart';

class Login1 extends StatelessWidget {
  Login1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              const Text("Please enter the details to login"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              TextFormField(
                // style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38),
                      borderRadius: BorderRadius.circular(7)),
                  contentPadding: EdgeInsets.all(12),
                  labelText: "Email Address",
                  labelStyle: TextStyle(color: Colors.black26),
                  suffixIcon: Icon(Icons.email, color: Colors.black38),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              TextFormField(
                // style: TextStyle(color: Colors.blue),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(7)),
                  contentPadding: EdgeInsets.all(12),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black26),
                  suffixIcon: Icon(Icons.visibility_off, color: Colors.black26),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              Row(
                children: [Spacer(), Text("Forgot Password?")],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.045),
              SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red[700]),
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              Row(
                children: [
                  Expanded(child: Divider()),
                  CircleAvatar(
                    child: Text(
                      "OR",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  Expanded(child: Divider())
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: NetworkImage(
                          "https://banner2.cleanpng.com/20180326/gte/avj4aturu.webp"),
                    ),
                    Expanded(
                      child: Text(
                        "Continue with Google",
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    side: BorderSide(width: 1),
                    elevation: 0,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Row(
                children: [
                  Expanded(child: Text("Dont have any account")),
                  InkWell(
                      onTap: () {
                        print("Pressed");
                      },
                      child: Row(
                        children: [
                          Text(
                            "SIGN UP",
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
