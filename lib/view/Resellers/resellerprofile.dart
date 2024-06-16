import 'package:bizfuel/view/login/login.dart';
import 'package:bizfuel/viewmodel/firebasehelper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResellerProfile extends StatefulWidget {
  ResellerProfile({super.key});

  @override
  State<ResellerProfile> createState() => _ResellerProfileState();
}

class _ResellerProfileState extends State<ResellerProfile> {
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
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.skip_previous_outlined),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
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
              Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Consumer<FirebaseHelper>(
                    builder: (context, helper, child) {
                      return GestureDetector(
                        onTap: () {
                          helper.logout(context).then((value) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                                (route) => false);
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 299,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Center(
                              child: Text(
                            "logout",
                            style: TextStyle(fontSize: 18),
                          )),
                        ),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
