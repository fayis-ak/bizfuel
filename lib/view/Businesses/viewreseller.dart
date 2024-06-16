import 'package:bizfuel/view/Businesses/chats.dart';
import 'package:flutter/material.dart';

class ViewReseller extends StatefulWidget {
  ViewReseller({super.key});

  @override
  State<ViewReseller> createState() => _ViewResellerState();
}

class _ViewResellerState extends State<ViewReseller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              // color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(
                    "images/background.jpg",
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_outlined))
                      // Icon(Icons.arrow_back_outlined),
                      ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: const Text(
                      "Resellers Profile",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    "assets/images/profile.png",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Container(
                  height: 45,
                  width: 299,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text(
                    "Jobil",
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 45,
                  width: 299,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text(
                    "Jobil@gmail.com",
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 45,
                  width: 299,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text(
                    "3265987456",
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 45,
                  width: 299,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text(
                    "pg",
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 45,
                  width: 299,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text(
                    "3 yearexp",
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Chats()));
                  },
                  child: const Text("Chat"))
            ],
          ),
        ),
      ),
    );
  }
}
