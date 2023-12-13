import 'package:flutter/material.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "JSPM's Rajarshi Shahu College of engineering Pune",
                style: TextStyle(
                  fontSize: 19,
                  fontFamily: 'seguisb',
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              '\nDept of Information Technology.',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'seguisb',
                color: Colors.grey,
              ),
            ),
          ),
          Center(
            child: Text(
              '\nAuthor Names: \n      - Mahesh Pawar \n      - Sandesh Jagtap\n      - Mukesh Jaiswal\n      - Prasad Rane',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'seguisb',
                color: Colors.grey,
              ),
            ),
          ),
          Center(
            child: Text(
              '\nGuild Name - Prof. Dipali Patil.',
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'seguisb',
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
