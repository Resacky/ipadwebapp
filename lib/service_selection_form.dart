import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sign_in_form.dart';
import 'widgets/custom_button.dart';

class service_selection extends StatefulWidget {
  service_selection({Key? key}) : super(key: key);

  @override
  State<service_selection> createState() => _service_selectionState();
}

class _service_selectionState extends State<service_selection> {

  String lineID = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
            child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Text("PLEASE SELECT A SERVICE", 
                        style: GoogleFonts.taviraj(color: const Color(0xFFc05818)),
                        textScaleFactor: 2.5,),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextButton(text: "Building", 
                                          onPressed: () {
                                            onSelected(context, "165056");
                                          }),
                        CustomTextButton(text: "Board of Architects", 
                                          onPressed: () {
                                            onSelected(context, "165058");
                                          }),
                      ]
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextButton(text: "Construction Regulation", 
                                          onPressed: () {
                                            onSelected(context, "165059");
                                          }),
                        CustomTextButton(text: "Electrical", 
                                          onPressed: () {
                                            onSelected(context, "165061");
                                          }),
                      ]
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextButton(text: "Fire", 
                                          onPressed: () {
                                            onSelected(context, "165064");
                                          }),
                        CustomTextButton(text: "Mechanical", 
                                          onPressed: () {
                                            onSelected(context, "165065");
                                          }),
                      ]
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextButton(text: "Permits/Inspections", 
                                          onPressed: () {
                                            onSelected(context, "165067");
                                          }),
                        CustomTextButton(text: "Planning", 
                                          onPressed: () {
                                            onSelected(context, "165068");
                                          }),
                      ]
                    ),
                  ],
        ),
      ),
    );      
  }

  onSelected(BuildContext context, String lineID) {

    Navigator.push(context,
    MaterialPageRoute(builder: (context) => SignInForm(lineID: lineID)),);

  }

}