import 'package:bizfuel/view/Businesses/chats.dart';
import 'package:bizfuel/view/Businesses/sentrequest.dart';
import 'package:bizfuel/view/Businesses/resellerrequst.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Resellers());
}

class Resellers extends StatefulWidget {
  const Resellers({super.key});

  @override
  State<Resellers> createState() => _ResellersState();
}

class _ResellersState extends State<Resellers> {
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
      child: DefaultTabController(
        length: 2,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(left: 60, top: 10),
            child: Text(
              "Resellers",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 5, right: 5),
            child: SizedBox(
                height: 30,
                child: SearchBar(
                  hintText: "Find resellers",
                  hintStyle: MaterialStatePropertyAll(
                      TextStyle(color: Colors.black45, fontSize: 14)),
                  leading: Icon(Icons.search),
                )),
          ),
          const TabBar(
              indicatorColor: Colors.black,
              dividerColor: Colors.black,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: "Existing",
                ),
                Tab(
                  text: "New",
                )
              ]),
          Expanded(
            child: TabBarView(children: [
              Tab(
                child: Container(
                  color: Colors.transparent,
                  child: const Existing(),
                ),
              ),
              Tab(
                child: Container(
                  color: Colors.transparent,
                  child: const New(),
                ),
              )
            ]),
          ),
        ]),
      ),
    ));
  }
}

class New extends StatefulWidget {
  const New({
    super.key,
  });

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Send_request())),
                    tileColor: Colors.white,
                    leading: const CircleAvatar(
                      radius: 20,
                    ),
                    title: const Text(
                      "Name:sdfghj",
                      style: TextStyle(fontSize: 12),
                    ),
                    subtitle: const Text(
                      "Qualification:sdfghjsdfgh",
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
              itemCount: 5)
        ],
      ),
    );
  }
}

class Existing extends StatefulWidget {
  const Existing({
    super.key,
  });

  @override
  State<Existing> createState() => _ExistingState();
}

class _ExistingState extends State<Existing> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Send_request(),
                  )),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Chats())),
                      tileColor: Colors.white,
                      leading: const CircleAvatar(
                        radius: 20,
                      ),
                      title: const Text(
                        "Name:jobin",
                        style: TextStyle(fontSize: 12),
                      ),
                      subtitle: const Text(
                        "Qualification:+2",
                        style: TextStyle(fontSize: 10),
                      ),
                      trailing: const Icon(Icons.more_vert),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: 5)
        ],
      ),
    );
  }
}
