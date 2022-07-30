import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happylocate/homeScreen.dart';

class SubmitScreen extends StatelessWidget {
  const SubmitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.check,
              color: Color(0xFF4CAF50),
              size: 96,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Inventory Saved",
              style:
                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "We've sent you an email",
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 67,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: ((context) => HomeScreen())),
                    (route) => false);
              },
              child: Text("Home"),
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(140, 40))),
            )
          ],
        ),
      ),
    );
  }
}
