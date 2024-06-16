import 'package:bizfuel/view/login/welcome.dart';
import 'package:flutter/material.dart';

class Letsgo extends StatefulWidget {
  const Letsgo({super.key});

  @override
  State<Letsgo> createState() => _LetsgoState();
}

class _LetsgoState extends State<Letsgo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 160),
                child: Image.asset("images/logo.png"),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 11, 177, 196),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                  child: Text(
                    "Let's go",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
