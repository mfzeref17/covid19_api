import 'package:flutter/material.dart';
import 'package:uts_max/sidebar.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({super.key});

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      key: _key,
      drawer: const SideBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // drawer & notif
              // height: 200,
              padding: const EdgeInsets.only(
                  bottom: 20, left: 15, right: 15, top: 50),
              decoration: const BoxDecoration(
                color: Color(0xff00BFA6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          color: Color(0xff00BFA6),
                        ),
                        child: InkWell(
                          splashColor: const Color(0xff5AEEF4),
                          borderRadius: BorderRadius.circular(45),
                          onTap: () {
                            _key.currentState!.openDrawer();
                          },
                          child: Image.asset('images/menu.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Statistics",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: const Color(0xff00BFA6),
                    ),
                    child: InkWell(
                      splashColor: const Color(0xff5AEEF4),
                      borderRadius: BorderRadius.circular(45),
                      onTap: () {},
                      child: Image.asset('images/lonceng.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
              decoration: const BoxDecoration(
                color: Color(0xff00BFA6),
              ),
              child: Column(
                children: [
                  Image.asset("images/indo_global.png"),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    "Last update 2-10-2020",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 0.5),
              decoration: const BoxDecoration(
                color: Color(0xff00BFA6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 90,
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 3, color: Colors.white),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Total",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 90,
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 3, color: Color(0xff00BFA6)),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Today",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.27,
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 77,
                ),
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffdddddd),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("295,499",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text("Total Case",
                                style: TextStyle(color: Color(0xffFFC542))),
                          ],
                        ),
                        Image.asset("images/emote_datar.png")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffdddddd),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("295,499",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text("Total Case",
                                style: TextStyle(color: Color(0xff09B5FF))),
                          ],
                        ),
                        Image.asset("images/emote_sedih.png")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffdddddd),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("295,499",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text("Total Case",
                                style: TextStyle(color: Color(0xff00BFA6))),
                          ],
                        ),
                        Image.asset("images/emote_senang.png")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffdddddd),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("295,499",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text("Total Case",
                                style: TextStyle(color: Color(0xffFF464F))),
                          ],
                        ),
                        Image.asset("images/emote_kepanasan.png")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffdddddd),
                  width: 1,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Daily Statistics",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New",
                            style: TextStyle(height: 2),
                          ),
                          Text(
                            "Active ",
                            style: TextStyle(height: 2),
                          ),
                          Text(
                            "Recovered",
                            style: TextStyle(height: 2),
                          ),
                          Text(
                            "Death",
                            style: TextStyle(height: 2),
                          ),
                        ],
                      ),
                      Image.asset("images/grafik.png"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffdddddd),
                  width: 1,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Statistics",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset("images/grafik2.png"),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Active"),
                        Text("Recovered"),
                        Text("Death"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
