import 'package:flutter/material.dart';


class Aboutus extends StatelessWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded , size: 30, color: Colors.black,),
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  const [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Welcome to our Lumpy Cow Disease Prediction App! ',
                style: TextStyle(
                  fontSize: 19,
                  fontFamily: 'seguisb',
                  color: Colors.grey,
                ),
              ),
            ),
            Center(
              child: Text(
                'Our Lumpy Cow Disease Prediction App is designed to help farmers and livestock owners predict the likelihood of their cows contracting this disease.',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'seguisb',
                  color: Colors.grey,
                ),
              ),
            ),
            Center(
              child: Text(
                'We believe that early detection and prevention are key to minimizing the spread of lumpy cow disease and protecting the health and well-being of cows.',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'seguisb',
                  color: Colors.grey,
                ),
              ),
            ),
            Center(
              child: Text(
                'Our team consists of experienced veterinarians and data scientists who are committed to early detection and prevention.',
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