import 'package:flutter/material.dart';

class page_02 extends StatelessWidget {
  page_02({Key? key}) : super(key: key);

  String BMI_Value = "18.5";
  String Intro = "Normal";
  String MSG = "You Have Perfect BMI !";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101428),
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor: const Color(0xFF101428),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your Result",
              style: TextStyle(
                color: Colors.white,
                fontSize: 55,
                fontWeight: FontWeight.bold
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              height: 500,
              width: double.infinity,
              decoration:  BoxDecoration(
                color: const Color(0xFF232336),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(Intro,
                    style: const TextStyle(
                      color: Color(0xFF7ED779),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(BMI_Value,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 90,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(MSG,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          height: 80,
          decoration: const BoxDecoration(
            color: Color(0xFFca1b53),
          ),
          alignment: Alignment.center,
          child: const Text("RE-CALCULATE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
