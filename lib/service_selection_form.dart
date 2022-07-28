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
                                          Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => const SignInForm()),
                                          );
                        }),
                        CustomTextButton(text: "Board of Architects", 
                                          onPressed: (){
                                          Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => const SignInForm()),
                                          );
                        }),
                      ]
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextButton(text: "Construction Regulation", 
                                          onPressed: (){
                                          Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => const SignInForm()),
                                          );
                        }),
                        CustomTextButton(text: "Electrical", 
                                          onPressed: (){
                                          Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => const SignInForm()),
                                          );
                        }),
                      ]
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextButton(text: "Fire", 
                                          onPressed: (){
                                          Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => const SignInForm()),
                                          );
                        }),
                        CustomTextButton(text: "Mechanical", 
                                          onPressed: (){
                                          Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => const SignInForm()),
                                          );
                        }),
                      ]
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextButton(text: "Permits/Inspections", 
                                          onPressed: (){
                                          Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => const SignInForm()),
                                          );
                        }),
                        CustomTextButton(text: "Planning", 
                                          onPressed: (){
                                          Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => const SignInForm()),
                                          );
                        }),
                      ]
                    ),
                  ],
        ),
      ),
    );      
  }
}