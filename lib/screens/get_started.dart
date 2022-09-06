import 'package:flutter/material.dart';

import '../widgets/my_app_bar.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  var _pageController = PageController(viewportFraction: 1, initialPage: 1);
  int activePage = 1;

  List<String> images = [
    "assets/images/stranger_things.jpg",
    "assets/images/breaking_bad.jpeg",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 50.0),
          child: MyAppBar(),
        ),
        body: SafeArea(
          child: Stack(children: [
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: PageView.builder(
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
                      onPressed: (() {}),
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
}
