import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget{

  final String text;
  final void Function() onPressed;
  
  const CustomTextButton({Key? key, required this.text, required this.onPressed}): super(key: key);

  @override
   Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(primary: 
                                      const Color(0xFF007073),
                                        minimumSize: const Size(300, 70),
                                      ),
        child: Text(text, 
                    textScaleFactor: 1.5, 
                    style: GoogleFonts.openSans(),
                    ),
      ),
    );
  }
}
