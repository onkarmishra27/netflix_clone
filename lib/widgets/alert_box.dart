import 'package:flutter/material.dart';

import 'app_button.dart';

class AlertBox extends StatefulWidget {
  String header;
  String description;
  String? value;
  String? yes;
  String? no;
  final VoidCallback okay;
  final VoidCallback? cancel;

  AlertBox({
    Key? key,
    required this.header,
    required this.description,
    required this.okay,
    this.cancel,
    this.value,
    this.no,
    this.yes

  }) : super(key: key);

  @override
  State<AlertBox> createState() => _AppDialogState();
}

class _AppDialogState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      child: contentBox(context),
    );
  }

  Stack contentBox(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding:
          const EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  widget.header,
                  style: TextStyle(
                      fontFamily: 'OpenBold',
                      fontSize: 18.0,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              if(widget.value!=null) Align(
                alignment: Alignment.center,
                child: Text(
                  widget.value!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'OpenBold',
                      fontSize:30.0,
                      color: Colors.black),
                ),
              ),
              if(widget.value!=null) SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  widget.description,
                  style: TextStyle(
                      fontFamily: 'OpenRegular',
                      fontSize: 25.0,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Button(
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(10),
                    textColor: Colors.white,
                    backgroundColor: Colors.black,
                    text:widget.no==null? 'No': widget.no!,
                    width: 120,
                    height: 15,
                    fontFamily: 'OpenMedium',
                    onPressed: () {
                      Navigator.pop(context, true);
                      widget.cancel!();
                    },
                  ),
                  Spacer(),
                  Button(
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(10),
                    textColor: Colors.white,
                    backgroundColor: Colors.black,
                    text: widget.yes==null? 'Yes': widget.yes!,
                    width: 120,
                    height: 15,
                    fontFamily: 'OpenMedium',
                    onPressed: () {
                      Navigator.pop(context, true);
                     widget.okay();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  void handleStack(String route) {
    Navigator.pop(context, true);
    Navigator.pushNamed(context, route);
  }
}
