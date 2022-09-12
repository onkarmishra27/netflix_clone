import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    Key? key,
    required this.userEmail,
  }) : super(key: key);
  final String? userEmail;

  @override
  State<SignUp> createState() => _SignInState();
}

class _SignInState extends State<SignUp> {
  final double scroolOffSet = 0.0;
  String? user_email;


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: _signUpAppBar(),
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
                    "CONTINUE",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffE50914))),
                ),
              ),
            ),
          ]),
        ));
  }

  AppBar _signUpAppBar() {
    return AppBar(
      elevation: 0.0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: SizedBox(
        width: 100,
        child: Image.asset(
          "assets/images/netflix_logo1.png",
        ),
      ),
      actions: [
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  elevation: MaterialStateProperty.all(0.0)),
              child: Text(
                "HELP",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  elevation: MaterialStateProperty.all(0.0)),
              child: Text(
                "SIGN IN",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
