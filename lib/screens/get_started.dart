import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/ready_to_watch.dart';
import 'package:netflix_clone/widgets/my_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  var _pageController = PageController(viewportFraction: 1.0, initialPage: 0);
  int activePage = 0;
  double _scrollOffset_ = 0.0;

  List<String> images = [
    "assets/images/stranger_things.jpg",
    "assets/images/umbrella_academy.jpg",
    "assets/images/htsdof.jpg",
    "assets/images/thirteen_reasons_why.jpg"
  ];

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3),
        width: 20,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.white : Colors.grey,
            shape: BoxShape.circle),
      );
    });
  }

  @override
  void initState() {
    super.initState();
  }

  launchPrivacyUrl() async {
    log("PRIVACY got tapped");
    // Uri url = Uri.parse('https://help.netflix.com/legal/privacy');
    Uri url =
        Uri(scheme: 'https', path: 'https://help.netflix.com/legal/privacy');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Sorry! can\'t able call $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var _dotItems = <String>["FAQs", "HELP"];
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 40),
            child: MyApppBar(dotItems: _dotItems)),
        body: SafeArea(
          child: Stack(children: [
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: PageView.builder(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      itemCount: images.length,
                      pageSnapping: true,
                      controller: _pageController,
                      onPageChanged: (page) {
                        setState(() {
                          activePage = page;
                        });
                      },
                      itemBuilder: (context, pagePosition) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(images[pagePosition]),
                        );
                      }),
                ),
              ],
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 200),
                child: Text("Unlimited entertainement, one low price.",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 120),
                child: Text("All of Netflix, starting at just\n Rs 149.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicators(images.length, activePage)),
                SizedBox(
                  height: 2,
                ),
                Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ReadyToWatch()),
                        );
                      }),
                      child: Text(
                        "GET STARTED",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xffE50914))),
                    ),
                  ),
                )
              ],
            ),
          ]),
        ));
  }

  AppBar getStartedAppBar(List<String> dotItems) {
    return AppBar(
      backgroundColor: Colors.black.withOpacity(
        (_scrollOffset_ / 350).clamp(0, 1).toDouble(),
      ),
      actions: [
        Image.asset(
          "assets/images/netflix_logo0.png",
        ),
        SizedBox(
          width: 80,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black.withOpacity(
                      (_scrollOffset_ / 350).clamp(0, 1).toDouble(),
                    ), // background
                    onPrimary: Colors.white // foreground
                    ),
                onPressed: () {
                  launchPrivacyUrl();
                },
                child: Text(
                  "PRIVACY",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black.withOpacity(
                      (_scrollOffset_ / 350).clamp(0, 1).toDouble(),
                    ), // background
                    onPrimary: Colors.white // foreground
                    ),
                onPressed: () {
                  log("SIGN IN got tapped");
                },
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        PopupMenuButton<String>(
          icon: Icon(
            Icons.more_vert,
            color: Colors.grey,
          ),
          itemBuilder: (BuildContext context) {
            return dotItems.map((String items) {
              return PopupMenuItem<String>(
                child: Text(items),
                value: items,
              );
            }).toList();
          },
        )
      ],
    );
  }
}
