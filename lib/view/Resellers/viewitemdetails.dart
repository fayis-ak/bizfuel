import 'package:bizfuel/model/businesstypemodel.dart';
import 'package:bizfuel/utils/string.dart';
import 'package:bizfuel/view/Businesses/businesstype.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Viewitemdetails extends StatefulWidget {
  final BusinesPost? businesPost;
  Viewitemdetails({super.key, this.businesPost});

  @override
  State<Viewitemdetails> createState() => _ViewitemDetailsState();
}

class _ViewitemDetailsState extends State<Viewitemdetails> {
  final keyfeature = TextEditingController();
  final small = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Column(children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Watches",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Eleget Watches",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                widget.businesPost!.image,
                              )),
                              border: Border.all()),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/9979945/pexels-photo-9979945.jpeg?auto=compress&cs=tinysrgb&w=600")),
                            border: Border.all(),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/3487862/pexels-photo-3487862.jpeg?auto=compress&cs=tinysrgb&w=600")),
                              border: Border.all()),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/9978709/pexels-photo-9978709.jpeg?auto=compress&cs=tinysrgb&w=600")),
                              border: Border.all()),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/9979945/pexels-photo-9979945.jpeg?auto=compress&cs=tinysrgb&w=600")),
                            border: Border.all(),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/3487862/pexels-photo-3487862.jpeg?auto=compress&cs=tinysrgb&w=600")),
                              border: Border.all()),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text("Key Features"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: Helper.W(context) * .8,
                    height: Helper.H(context) * .070,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Row(
                      children: [
                        Text(widget.businesPost!.keyfeature),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text("Small Description"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: Helper.W(context) * .8,
                    height: Helper.H(context) * .070,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Row(
                      children: [
                        Text(widget.businesPost!.description),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 5, 243, 52),
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Request",
                        style: TextStyle(fontSize: 20),
                      )),
                ]))));
  }
}
