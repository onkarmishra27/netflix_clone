import 'package:flutter/material.dart';

class ReadyToWatch extends StatefulWidget {
  const ReadyToWatch({Key? key}) : super(key: key);

  @override
  State<ReadyToWatch> createState() => _ReadyToWatchState();
}

class _ReadyToWatchState extends State<ReadyToWatch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 80),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 30, 0),
            child: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              elevation: 0.0,
              actions: [
                IconButton(
                  iconSize: 30,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close),
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text("Ready to watch?",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 20,
                ),
                Text("Enter your email to create or sign in to\n your account.",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent, width: 2.0),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(5.0),
                      ),
                    ),
                    height: 70,
                    child: TextField(
                      cursorColor: Colors.grey,
                      cursorHeight: 30,
                      autocorrect: false,
                      autofocus: true,
                      enableSuggestions: false,
                      decoration: new InputDecoration(
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 10, 00, 0),
                        hintText: "",
                        labelText: "Email",
                        focusedBorder: InputBorder.none,
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
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
            )),
      ),
    );
  }
}
