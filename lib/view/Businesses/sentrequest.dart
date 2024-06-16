import 'package:flutter/material.dart';

class Send_request extends StatelessWidget {
  Send_request({super.key});

  final List<Map<String, dynamic>> profile_details = [
    {
      "name": "swathi",
      "email": "swathi@2000",
      "phno": 9746606971,
      "qualification": "MCA",
      "experience": "5 year experience"
    }
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back)),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Reseller Profile",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const CircleAvatar(
              radius: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 30,
                child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    readOnly: true,
                    controller: TextEditingController(
                        text: '${profile_details[0]["name"]}')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 30,
                child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    readOnly: true,
                    controller: TextEditingController(
                        text: '${profile_details[0]["email"]}')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 30,
                child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    readOnly: true,
                    controller: TextEditingController(
                        text: '${profile_details[0]["phno"]}')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 30,
                child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    readOnly: true,
                    controller: TextEditingController(
                        text: '${profile_details[0]["qualification"]}')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                height: 30,
                child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    readOnly: true,
                    controller: TextEditingController(
                        text: '${profile_details[0]["experience"]}')),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Request",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 78, 189, 178))),
            )
          ],
        ),
      ),
    );
  }
}
