import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                labelText: "username or email",
                prefixIcon: Icon(
                  Icons.person,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                labelText: "password",
                prefixIcon:Icon(Icons.lock_outline_rounded),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  // style: TextStyle(fontSize: 20,),
                style: GoogleFonts.workSans(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[200],
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            // SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                bottom: MediaQuery.of(context).size.height * 0.03,
              ),
              child: Text(
                "Forgot Password ?",
                style: TextStyle(color: Colors.blue[300]),
              ),
            ),
            Text("Don't have any account? Sign up"),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: Row(
                children: [
                  Expanded(child: Divider()),
                  CircleAvatar(
                    child: Text("OR"),
                    backgroundColor: Colors.transparent,
                  ),
                  Expanded(child: Divider()),
                ],
              ),
            ),
            Text("Sign up wiht Social Networks"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png")),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                ),
                CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi-TGmA1kwrrCDuC7QtX3cojJb27aSXjE0Qw&s")),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                ),
                CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/x-social-media-round-icon.png")),
               
              ],
            )
          ],
        ),
      ),
    );
  }
}
