import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: SizedBox(
            width: 100,
            child: Image.asset(
              "assets/images/netflix_logo1.png",
            ),
          ),
        ),
        body: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5.0),
                  ),
                ),
                height: 80,
                child: TextField(
                  cursorColor: Colors.white,
                  cursorHeight: 30,
                  autocorrect: false,
                  autofocus: true,
                  enableSuggestions: false,
                  decoration: new InputDecoration(
                    labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                    contentPadding: const EdgeInsets.fromLTRB(20, 10, 00, 0),
                    hintText: "",
                    labelText: "Email or phone number",
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5.0),
                  ),
                ),
                height: 80,
                child: TextField(
                  cursorColor: Colors.white,
                  cursorHeight: 30,
                  autocorrect: false,
                  autofocus: true,
                  enableSuggestions: false,
                  decoration: new InputDecoration(
                    labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                    contentPadding: const EdgeInsets.fromLTRB(20, 10, 00, 0),
                    hintText: "",
                    labelText: "Password",
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5.0),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: (() {}),
                  child: Text(
                    "Sign In",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black)),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  child: Center(
                      child: Text(
                    "Need help?",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade400),
                  )),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                  child: Center(
                      child: Text(
                    "New to Netflix? Sign up now.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, color: Colors.grey.shade400),
                  )),
                ),
                Container(
                  child: Center(
                      child: Text(
                    "Sign in is protected by Google reCAPTCHA to ensure \n you're not a bot. Learn more. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade500,
                    ),
                  )),
                )
              ],
            )
          ]),
        ));
  }
}
