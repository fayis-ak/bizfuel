import 'package:bizfuel/view/Resellers/viewitemdetails.dart';
import 'package:flutter/material.dart';

class Recommentation extends StatefulWidget {
  const Recommentation({super.key});

  @override
  State<Recommentation> createState() => _RecommentationState();
}

class _RecommentationState extends State<Recommentation> {
  List<Map<String, dynamic>> gridup = [
    {
      "image": "images/watch2.jpg",
      "name": "sdfgh",
      "place": "manjeri",
      "description": "xfghjsdfghjxcv"
    },
    {
      "image": "images/watch2.jpg",
      "name": "sdfgh",
      "place": "manjeri",
      "description": "xfghjsdfghjxcv"
    },
    {
      "image": "images/watch2.jpg",
      "name": "sdfgh",
      "place": "manjeri",
      "description": "xfghjsdfghjxcv"
    },
    {
      "image": "images/watch2.jpg",
      "name": "sdfgh",
      "place": "manjeri",
      "description": "xfghjsdfghjxcv"
    },
    {
      "image": "images/watch2.jpg",
      "name": "sdfgh",
      "place": "manjeri",
      "description": "xfghjsdfghjxcv"
    },
    {
      "image": "images/watch1.jpg",
      "name": "sdfgh",
      "place": "manjeri",
      "description": "xfghjsdfghjxcv"
    },
    {
      "image": "images/watch1.jpg",
      "name": "sdfgh",
      "place": "manjeri",
      "description": "xfghjsdfghjxcv"
    },
    {
      "image": "images/watch1.jpg",
      "name": "sdfgh",
      "place": "manjeri",
      "description": "xfghjsdfghjxcv"
    },
    {
      "image": "images/watch1.jpg",
      "name": "sdfgh",
      "place": "manjeri",
      "description": "xfghjsdfghjxcv"
    },
    {
      "image": "images/watch1.jpg",
      "name": "sdfgh",
      "place": "manjeri",
      "description": "xfghjsdfghjxcv"
    },
    {
      "image": "images/watch1.jpg",
      "name": "sdfgh",
      "place": "manjeri",
      "description": "xfghjsdfghjxcv"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: 110,
                  ),
                  Text(
                    "Watch",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                child: SizedBox(
                    height: 30,
                    child: SearchBar(
                      hintText: "Find Businesses",
                      hintStyle: MaterialStatePropertyAll(
                          TextStyle(color: Colors.black45, fontSize: 14)),
                      leading: Icon(Icons.search),
                    )),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12),
                      itemCount: 10,
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Viewitemdetails()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: Colors.transparent),
                            height: 150,
                            child: Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 100,
                                      width: 90,
                                      child: Image.asset(
                                        gridup[index]["image"],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(gridup[index]["name"]),
                                  Text(gridup[index]["description"]),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(gridup[index]["place"])
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
