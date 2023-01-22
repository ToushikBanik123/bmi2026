import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double sliderValue = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101428),
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        backgroundColor: const Color(0xFF101428),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Container(
                  height: 200,
                  //width: 250,
                  decoration: BoxDecoration(
                      color: const Color(0xFF232336),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.male,
                        color: Colors.white,
                        size: 90,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Male",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),),
                const SizedBox(width: 10,),
                Expanded(child: Container(
                  height: 200,
                  //width: 250,
                  decoration: BoxDecoration(
                      color: const Color(0xFF232336),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.female,
                        color: Colors.white,
                        size: 90,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Female",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),),

              ],
            ),
            //SizedBox(height: 10,),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xFF232336),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Hight",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:  [
                      const Text("159",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 7),
                          child: Text("CM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      ),

                    ],
                  ),
                  Slider(
                      activeColor: Color(0xFFca1b53),
                      inactiveColor: Colors.white,
                      value: sliderValue,
                      onChanged: (double value){
                        setState(() {
                          sliderValue = value;
                        });
                      })
                ],
              ),
            ),
            //SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Container(
                  height: 200,
                  //width: 250,
                  decoration: BoxDecoration(
                      color: const Color(0xFF232336),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Weight",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const Text("59",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                           CircleAvatar(
                            radius: 27,
                            backgroundColor: Color(0xFFC0C0C0),
                            child: Icon(Icons.add,
                              color: Colors.white,
                              size: 43,
                            ),
                          ),
                          CircleAvatar(
                            radius: 27,
                            backgroundColor: Color(0xFFC0C0C0),
                            child: Icon(Icons.remove,
                              color: Colors.white,
                              size: 43,
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),),
                const SizedBox(width: 10,),
                Expanded(child: Container(
                  height: 200,
                  //width: 250,
                  decoration: BoxDecoration(
                      color: const Color(0xFF232336),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Age",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const Text("59",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CircleAvatar(
                            radius: 27,
                            backgroundColor: Color(0xFFC0C0C0),
                            child: Icon(Icons.add,
                              color: Colors.white,
                              size: 43,
                            ),
                          ),
                          CircleAvatar(
                            radius: 27,
                            backgroundColor: Color(0xFFC0C0C0),
                            child: Icon(Icons.remove,
                              color: Colors.white,
                              size: 43,
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),),

              ],
            ),
            //SizedBox(height: 10,),
            const SizedBox(height: 60,)

          ],
        ),
      ),
      bottomSheet: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Color(0xFFca1b53),
        ),
        alignment: Alignment.center,
        child: const Text("CALCULATE",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }
}


