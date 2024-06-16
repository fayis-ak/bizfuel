import 'package:bizfuel/view/Businesses/chats.dart';
import 'package:flutter/material.dart';

class OtherBusinessProfile extends StatefulWidget {
  const OtherBusinessProfile({super.key});

  @override
  State<OtherBusinessProfile> createState() => _OtherBusinessProfileState();
}

class _OtherBusinessProfileState extends State<OtherBusinessProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back, color: Colors.black)),
                const SizedBox(
                  width: 90,
                ),
                const Text(
                  "Other Business",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "email",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "7534231233",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "fashion Business",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Fashion Dresses",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "More Info lets chat",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 31, 162, 136),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chats()));
                    },
                    child: Text(
                      "Chat",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )))
          ],
        ),
      ),
    ));
  }
}
