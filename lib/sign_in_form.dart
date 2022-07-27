import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

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

  onEnter() {

    isNameForm ? name = controller.text : phone = controller.text;
    controller.clear();

      if (isNameForm) {

        setState(() {
        isNameForm = false;
        });

      }

  }
}