import 'package:flutter/material.dart';
import 'package:get/get.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imgs/Componentwelcomepage.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 50, left: 50, right: 50),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      ".ToDo",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("imgs/clipboard.png"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Hello",
                        style: TextStyle(
                            fontSize: 67,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Make a to-do list and do it",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54)),
                  ],
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.8,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed("/second");
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Color.fromARGB(255, 43, 133, 202),
                  side: BorderSide(
                    width: 3,
                  )),
              child: Text(
                "Let's get started",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
