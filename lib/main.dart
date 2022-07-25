import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

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

class CustomTextButton extends StatelessWidget{

  final String text;
  final void Function() onPressed;
  
  const CustomTextButton({Key? key, required this.text, required this.onPressed}): super(key: key);

  @override
   Widget build(BuildContext context){
    return TextButton(onPressed: onPressed, child: Text(text, style: GoogleFonts.taviraj()
    ));
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

  //ask Kuroodo how to properly have a 2x2 without manually setting it up
  List<CustomTextButton> buttons = [CustomTextButton(text: "text", onPressed: (){}),
                                    CustomTextButton(text: "text", onPressed: (){}),
                                    CustomTextButton(text: "text", onPressed: (){}),
                                    CustomTextButton(text: "text", onPressed: (){}),
                                    CustomTextButton(text: "text", onPressed: (){}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Coral Gables Building Department"),
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

                           }),
          ],
        ),
      ),
    );
  }
}