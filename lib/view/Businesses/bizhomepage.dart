import 'package:bizfuel/view/Businesses/otherbusinessesprofile.dart';
import 'package:bizfuel/view/Businesses/requstedresellers.dart';
import 'package:bizfuel/view/Businesses/resellers.dart';
import 'package:bizfuel/view/Businesses/viewreseller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Bizhomepge extends StatefulWidget {
  const Bizhomepge({super.key});

  @override
  State<Bizhomepge> createState() => _BizhomepgeState();
}

class _BizhomepgeState extends State<Bizhomepge> {
   Stream<QuerySnapshot>? _businessStream;

  List<String> gridviewname = [
    "Joss",
    "Amana",
    "Thomas",
    "Joshi",
    "Sahal",
    "Riyas"
  ];

  @override
  void initState() {
    super.initState();
    // Initialize the stream to display all businesses initially
    _businessStream = FirebaseFirestore.instance.collection('business').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                Row(
                  children: [
                    const SizedBox(width: 5),
                    const Icon(Icons.location_on_outlined),
                    const Text(
                      "Kerala, India",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.keyboard_arrow_down, size: 27),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Requested_resellers()),
                        );
                      },
                      icon: const Icon(Icons.person_add_alt_1, size: 32),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications, size: 32),
                    ),
                  ],
                ),
                SearchBar(
                  hintText: "Find Businesses or Resellers",
                  hintStyle: const MaterialStatePropertyAll(TextStyle(color: Colors.black45)),
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_outlined),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Resellers:",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Resellers()),
                              );
                            },
                            child: const Text("More", style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 280,
                        child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ViewReseller()),
                                );
                              },
                              child: Container(
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const CircleAvatar(),
                                    const SizedBox(width: 5),
                                    Text(gridviewname[index]),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const Text(
                        "Other Business:",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, letterSpacing: 1),
                      ),
                      SizedBox(
                        height: 300,
                        child: StreamBuilder<QuerySnapshot>(
                          stream: _businessStream,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.waiting) {
                              return const Center(child: CircularProgressIndicator());
                            }
                            if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                              return const Center(child: Text("No businesses found"));
                            }
                            return ListView.separated(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index) {
                                DocumentSnapshot document = snapshot.data!.docs[index];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    height: 120,
                                    color: Colors.white,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            const CircleAvatar(radius: 20),
                                            const SizedBox(width: 10),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Name: ${document['name']}"),
                                                Text("Email: ${document['email']}"),
                                              ],
                                            ),
                                            const Spacer(),
                                            ElevatedButton(
                                              style: const ButtonStyle(
                                                backgroundColor: MaterialStatePropertyAll(
                                                  Color.fromARGB(255, 11, 175, 159),
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => OtherBusinessProfile(),
                                                  ),
                                                );
                                              },
                                              child: const Text(
                                                "More",
                                                style: TextStyle(color: Colors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BizbottomNavi(),
    );
  }
}
