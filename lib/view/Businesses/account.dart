import 'dart:developer';
import 'dart:ui';

import 'package:bizfuel/model/businessregistration.dart';
import 'package:bizfuel/utils/string.dart';
import 'package:bizfuel/view/login/login.dart';
import 'package:bizfuel/viewmodel/firebasehelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  List<String> details = ["abcd@gmail.com", "9992345345", "Elegent Watches"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpg'), fit: BoxFit.cover),
          ),
          child: Consumer<FirebaseHelper>(
            builder: (context, helper, child) {
              return FutureBuilder(
                future: helper.getBusinesprofile(auth.currentUser!.uid),
                builder: (context, snapshot) {
                  log('the bussines data ${snapshot.data.toString()}');

                  final data = helper.businesRegistrationModel;
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.arrow_back),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                'Accounts',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              TextButton(onPressed: () {}, child: Text("Edit")),
                              Consumer<FirebaseHelper>(
                                builder: (context, helper, child) {
                                  return TextButton(
                                      onPressed: () async {
                                        await helper.logout(context).then(
                                              (value) =>
                                                  Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Login(),
                                                ),
                                                (route) => false,
                                              ),
                                            );
                                      },
                                      child: Icon(Icons.logout));
                                },
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Center(
                            child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(
                            "images/149.jpeg",
                          ),
                        )),
                        const SizedBox(
                          height: 30,
                        ),
                        //   Expanded(
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: ListView.separated(
                        //         itemBuilder: (context, index) {
                        //           return Container(
                        //             height: 45,
                        //             decoration: BoxDecoration(
                        //                 boxShadow: const [
                        //                   BoxShadow(
                        //                       color: Colors.black,
                        //                       offset: Offset(1.0, 2.0),
                        //                       blurRadius: 3.0,
                        //                       spreadRadius: 0.0),
                        //                   BoxShadow(
                        //                       color: Colors.white,
                        //                       offset: Offset(0.0, 0.0),
                        //                       blurRadius: 0.0,
                        //                       spreadRadius: 0.0),
                        //                 ],
                        //                 border: Border.all(),
                        //                 borderRadius: BorderRadius.circular(15),
                        //                 color: Colors.white),
                        //             child: Center(child: Text(details[index])),
                        //           );
                        //         },
                        //         separatorBuilder: (context, index) =>
                        //             const SizedBox(
                        //           height: 25,
                        //         ),
                        //         itemCount: 3,
                        //       ),
                        //     ),
                        //   )

                        SizedBox(
                          height: Helper.H(context) * .050,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: Helper.W(context) * .70,
                                  height: Helper.H(context) * .050,
                                  child: Row(
                                    children: [
                                      Text(
                                        'NAME',
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: Helper.H(context) * .020,
                                ),
                                SizedBox(
                                  width: Helper.W(context) * .70,
                                  height: Helper.H(context) * .050,
                                  child: Row(
                                    children: [
                                      Text(
                                        ' data!.businessName',
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: Helper.H(context) * .020,
                                ),
                                SizedBox(
                                  width: Helper.W(context) * .70,
                                  height: Helper.H(context) * .050,
                                  child: Row(
                                    children: [
                                      Text(
                                        'NAME',
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
