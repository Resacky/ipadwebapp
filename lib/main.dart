import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ipadwebapp/service_selection_form.dart';
import 'dart:html' as html;

import 'sign_in_form.dart';
import 'widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final String payForPermit = 'https://coralgablesfl-energovpub.tylerhost.net/Apps/SelfService#/payinvoice';
  final String scheduleInspection = 'https://coralgablesfl-energovpub.tylerhost.net/Apps/SelfService#/login?';
  final String searchForPermit = 'https://coralgablesfl-energovpub.tylerhost.net/Apps/SelfService#/search';
  final String applyForPermit = 'https://coralgablesfl-energovpub.tylerhost.net/Apps/SelfService#/applicationAssistant?sectionName=Trending&showTemplates=false';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text("CORAL GABLES BUILDING DEPARTMENT",
                        style: GoogleFonts.taviraj(color: Color(0xFFc05818)),
                        textScaleFactor: 2.5,
                        ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, 
                children: [CustomTextButton(text: "Pay for Permit", onPressed: (){
                            html.window.open(payForPermit,"_self");
                           }),

                           CustomTextButton(text: "Schedule Inspection", onPressed: (){
                            html.window.open(scheduleInspection,"_self");
                           })]),

            Row(mainAxisAlignment: MainAxisAlignment.center, 
                children: [CustomTextButton(text: "Search for Permit", onPressed: (){
                            html.window.open(searchForPermit,"_self");
                           }),

                           CustomTextButton(text: "Apply for Permit", onPressed: (){
                            html.window.open(applyForPermit,"_self");                            
                           })]),

                           CustomTextButton(text: "Sign In", onPressed: (){
                           Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => service_selection()),);
                           }),
          ],
        ),
      ),
    );
  }
}