import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:http/http.dart" as http;

class SignInForm extends StatefulWidget {

  final String lineID;

  const SignInForm({Key? key, required this.lineID}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {

  TextEditingController controller = TextEditingController();

  String name = "";
  String phone = "";
  bool isNameForm = true;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
         body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
                isNameForm ? "Enter Your Name:" : "Enter Your Phone:",
                style: GoogleFonts.taviraj(color: const Color(0xFFc05818)), 
                textScaleFactor: 2.5,
              ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 500, 
                           child: TextField(keyboardType: isNameForm ? TextInputType.number : TextInputType.text,
                                            controller: controller,
                                            onSubmitted: (_) => onEnter()
                                            ,),
                          ),
                  ElevatedButton(child: const Icon(Icons.arrow_forward_ios), onPressed: () {

                    onEnter();

                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onEnter() async {

    isNameForm ? name = controller.text : phone = controller.text;
    controller.clear();

      if (isNameForm) {

        setState(() {
        isNameForm = false;
        });

      } else {

        String apiKey = "Aqs2g3xU81u3u9UhObPC9cKT4d4aiMMeT42l8MMs";

        //add code here to send the HTTPS command to speak to the API...
        final response = await http.post(
        Uri.parse('https://api.qminder.com/v1/lines/${widget.lineID}/ticket'),
        // Send authorization headers to the backend.
        headers: {
        "X-Qminder-REST-API-KEY": apiKey, 
        'Content-Type': 'application/x-www-form-urlencoded'},
        body: {'firstName': '$name',
               'phoneNumber': '$phone'
              }
        );

        //potential bugs/ features:
        // add first name and last name variables...?
        // make it a mobile app for IOS android and windows...?
        // have the websites open an internal browser to open the sites, instead of 
        // having the webapp reroute the whole website
        // program an internal timer to restart the app at a wait of about 2 minutes..?

        print(response.body);
        print(response.statusCode);

      }

  }

}