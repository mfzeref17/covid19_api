import 'package:flutter/material.dart';
import 'package:uts_max/sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int i = 1;

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
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: const Color(0xff00BFA6),
                    ),
                    child: InkWell(
                      splashColor: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(45),
                      onTap: () {},
                      child: Image.asset('images/lonceng.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // Covid -19 & bahasa
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 30),
              decoration: const BoxDecoration(
                color: Color(0xff00BFA6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Covid-19",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Image.asset("images/pilih_bahasa.png")
                ],
              ),
            ),
            Container(
              // text
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
              decoration: const BoxDecoration(
                color: Color(0xff00BFA6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: const Text(
                      "Are you feeling sick?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Text(
                      "If you feel sick with any of covid-19 symptoms please call or message us immediately for help.",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Container(
              // btn call now & send sms
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
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
                  Image.asset('images/call_now.png', width: 150),
                  Image.asset('images/send_sms.png', width: 150),
                ],
              ),
            ),
            Container(
              //prevention
              padding: const EdgeInsets.only(
                  left: 25, right: 25, bottom: 10, top: 20),
              decoration: const BoxDecoration(
                // color: Color(0xff00BFA6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Prevention",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1A3B34)),
                  ),
                  InkWell(
                    splashColor: const Color(0xff5AEEF4),
                    borderRadius: BorderRadius.circular(45),
                    onTap: () {},
                    child: Image.asset('images/short_right.png'),
                  ),
                ],
              ),
            ),
            Container(
              // prevention item
              padding: const EdgeInsets.only(
                left: 25,
                bottom: 20,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (i = 1; i <= 3; i++)
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 125,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffdddddd), width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                "images/prevention1.png",
                                width: 72,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Use Mask",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const Text(
                              "Lorem ipsum dolor sit amet",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              //Article
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
              decoration: const BoxDecoration(
                // color: Color(0xff00BFA6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Article",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1A3B34),
                    ),
                  ),
                  InkWell(
                    splashColor: const Color(0xff5AEEF4),
                    borderRadius: BorderRadius.circular(45),
                    onTap: () {},
                    child: Image.asset('images/short_right.png'),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, bottom: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 1; i <= 3; i++)
                      Container(
                        // padding: EdgeInsets.all(10),
                        width: 145,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffdddddd), width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              child: Image.asset("images/artikel1.png"),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Text(
                                    "Covid-19 global case ...",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              //Article
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
              decoration: const BoxDecoration(
                // color: Color(0xff00BFA6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "News",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1A3B34),
                    ),
                  ),
                  InkWell(
                    splashColor: const Color(0xff5AEEF4),
                    borderRadius: BorderRadius.circular(45),
                    onTap: () {},
                    child: Image.asset('images/short_right.png'),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, bottom: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 1; i <= 3; i++)
                      Container(
                        // padding: EdgeInsets.all(10),
                        width: 145,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffdddddd), width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              child: Image.asset("images/artikel2.png"),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: const Column(
                                children: [
                                  Text(
                                    "Covid-19 global case ...",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
