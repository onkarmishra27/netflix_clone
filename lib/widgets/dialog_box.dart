import 'package:flutter/material.dart';
import 'app_button.dart';

class AppDialog extends StatefulWidget {
  String header;
  String description;
  String? move;
  Map? args;
  String? popUntil;


  AppDialog(
      {Key? key,
      required this.header,
      required this.description,
      this.move,
      this.args,
      this.popUntil,
        })
      : super(key: key);

  @override
  State<AppDialog> createState() => _AppDialogState();
}

class _AppDialogState extends State<AppDialog> {
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
                alignment: Alignment.topLeft,
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
              Align(
                alignment: Alignment.centerLeft,
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
              Button(
                elevation: 0.0,
                borderRadius: BorderRadius.circular(10),
                textColor: Colors.white,
                backgroundColor: Colors.black,
                text: 'Okay',
                width: MediaQuery.of(context).size.width,
                height: 20,
                fontFamily: 'OpenMedium',
                onPressed: () {
                  if (widget.popUntil != null) {
                    Navigator.popUntil(context,
                        (route) => route.settings.name == widget.popUntil);
                  } else {
                    widget.move == null
                        ? Navigator.of(context).pop()
                        : handleStack(widget.move.toString(), widget.args);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  void handleStack(String route, Map? args) {
    Navigator.pop(context, true);
    Navigator.pushNamed(context, route, arguments: args);
  }
}
