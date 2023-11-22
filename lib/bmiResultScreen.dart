import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int result;
  final int height;
  final String isMale;
  final int age;
  final int weight;

  BmiResult({
    required this.weight,
    required this.height,
    required this.age,
    required this.result,
    required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.h_mobiledata,
            size: 40,
          ),
        ),
        title: Text(
          "BMI Result",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Expanded(
                        child: SizedBox(
                      height: 50,
                    )),

                    Image(
                      image: AssetImage("images/w.png"),
                      height: 300,
                      width: 300,
                    ),
                    Expanded(
                        child: SizedBox(
                      height: 10,
                    )),
                    SizedBox(
                      height: 5,
                    ),

                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              "you are : $isMale",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Your Age is : $age ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Your Height is : $height ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Your Weight is : $weight",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                        child: SizedBox(
                      height: 50,
                    )),

                    Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue[200],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Your Result is : $result",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue[200],
                          ),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              var h = result;

                              if (h <= 19) {
                                return Text(
                                  "you are 3andek Elsol 😂.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              } else if (h >= 26) {
                                return Text(
                                  "you are  Over Weight.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              } else if (h >= 31) {
                                return Text(
                                  "You are Obese.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              } else if (h >= 36) {
                                return Text(
                                  "You are Extreme obesity.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              } else if (height - weight == 100) {
                                return Center(
                                  child: Text(
                                    "you are in Perfect weight\n    ya bakhtek walahy 😂",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                );
                              } else {
                                return Text(
                                  "You are normal.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              }
                              ;
                            },
                          ),
                        ),
                      ],
                    ),

                    // Text("$z"),
                    Expanded(
                        child: SizedBox(
                      height: 40,
                    )),
                    Text(
                      "Made With Love  💙️",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
