import 'dart:developer';

import 'package:bizfuel/view/Businesses/bizpost2.dart';
import 'package:bizfuel/viewmodel/firebasehelper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bizpost extends StatefulWidget {
  final type;
  const Bizpost({super.key, required this.type});

  @override
  State<Bizpost> createState() => _BizpostState();
}

class _BizpostState extends State<Bizpost> {
  @override
  Widget build(BuildContext context) {
    final helper = Provider.of<FirebaseHelper>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'Business Post',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 70,
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 320,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(1.0, 2.0),
                              blurRadius: 3.0,
                              spreadRadius: 0.0),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    child: TextFormField(
                      controller: helper.businessname,
                      decoration: InputDecoration(
                        hintText: 'BusinessName',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Container(
                  height: 75,
                  width: 320,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(1.0, 2.0),
                            blurRadius: 3.0,
                            spreadRadius: 0.0),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all()),
                  child: TextFormField(
                    controller: helper.keyfeature,
                    decoration: InputDecoration(
                      hintText: 'key features to your item',
                    ),
                  ),
                  //  const Center(child: Text("key features to your item")),
                )),
                const SizedBox(
                  height: 20,
                ),
                Center(child: Consumer<FirebaseHelper>(
                  builder: (context, helper, child) {
                    return GestureDetector(
                      onTap: () {
                        // helper.pickListImage();
                        // log(helper.listImage.toString());
                        helper.pickimage();
                      },
                      child: Container(
                        height: 120,
                        width: 320,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(1.0, 2.0),
                                blurRadius: 3.0,
                                spreadRadius: 0.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.add)),
                            const Text("Add some photos"),
                          ],
                        ),
                      ),
                    );
                  },
                )),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 110,
                    width: 320,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(1.0, 2.0),
                              blurRadius: 3.0,
                              spreadRadius: 0.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    child: SizedBox(
                      height: 110,
                      width: 320,
                      child: TextFormField(
                        controller: helper.discription,
                        decoration: InputDecoration(
                          hintText: 'Description',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bizpost2(
                          tyep: widget.type,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 2, 124, 65),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
