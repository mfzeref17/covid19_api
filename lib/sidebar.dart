import 'package:flutter/material.dart';
import 'package:uts_max/statisticpage.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      decoration: const BoxDecoration(
        color: Color(0xff00bfa6),
      ),
      child: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xff00bfa6),
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 240.0,
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color(0xff00BFA6),
                  ),
                  child: Center(
                    child: Column(children: [
                      Image.asset(
                        "images/p.png",
                        width: 140,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Corona Virus",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ]),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset("images/home.png"),
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Image.asset("images/home.png"),
                title: const Text(
                  "Statistics",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const StatisticPage();
                    }),
                  );
                },
              ),
              ListTile(
                leading: Image.asset("images/home.png"),
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset("images/home.png"),
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset("images/home.png"),
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// return Drawer(
    //   child: ListView(
    //     children: [
    //       UserAccountsDrawerHeader(
    //         decoration: BoxDecoration(
    //           color: Color(0xff00BFA6),
    //         ),
    //         accountName: Text(
    //           "Corona Virus",
    //           style: TextStyle(color: Colors.white, fontSize: 24),
    //         ),
    //         accountEmail: Text(""),
    //         currentAccountPicture: Container(
    //           width: 100,
    //           height: 100,
    //           child: Image.asset(
    //             'images/p.png',
    //             width: 100,
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );