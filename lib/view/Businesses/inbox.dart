import 'package:bizfuel/view/Businesses/chats.dart';
import 'package:bizfuel/view/Businesses/sentrequest.dart';
import 'package:bizfuel/view/Businesses/resellerrequst.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Inbox());
}

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Sheffeq());
  }
}

class Sheffeq extends StatefulWidget {
  const Sheffeq({super.key});

  @override
  State<Sheffeq> createState() => _SheffeqState();
}

class _SheffeqState extends State<Sheffeq> {
  List<Map<String, dynamic>> datas = [
    {"name": "joss", "qualification": "ok"},
    {"name": "dxfs", "qualification": "ok"},
    {"name": "joss", "qualification": "ye"},
    {"name": "joss", "qualification": "hello"},
    {"name": "joss", "qualification": ""},
    {"name": "joss", "qualification": "+2"},
    {"name": "joss", "qualification": "+2"},
    {"name": "joss", "qualification": "+2"},
    {"name": "joss", "qualification": "+2"},
    {"name": "joss", "qualification": "+2"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          //Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Text(
                      "Inbox",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 5, right: 5),
                  child: SizedBox(
                      height: 40,
                      child: SearchBar(
                        hintText: "Find resellers",
                        hintStyle: MaterialStatePropertyAll(
                            TextStyle(color: Colors.black45, fontSize: 14)),
                        leading: Icon(Icons.search),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(5),
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: ListTile(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Chats())),
                            tileColor: Colors.white,
                            leading: const CircleAvatar(
                              radius: 20,
                            ),
                            title: Text(
                              datas[index]["name"],
                              style: TextStyle(fontSize: 12),
                            ),
                            subtitle: Text(
                              datas[index]["qualification"],
                              style: TextStyle(fontSize: 10),
                            ),
                            trailing: const Icon(Icons.more_vert),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                      itemCount: 10),
                )
              ]),
        ),
      )),
    );
  }
}
