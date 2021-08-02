import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Devolper"),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF111328),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/myimage.jpg"),
            ),
            Text(
              "Waqar Ahmed",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Pacifico",
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "FLUTTER DEVOLPER",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: "SourceSansPro-Regular"),
            ),
            SizedBox(
              height: 13,
              width: 150,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("0346-1599447"),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("wlwaqarah0@gmail.com"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
