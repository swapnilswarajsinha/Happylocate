import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happylocate/cameraScreen.dart';
import 'package:happylocate/inventoryListScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(
              width: 72,
            ),
            Text(
              "Inventory",
              style:
                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            DottedBorder(
              strokeWidth: 1.5,
              dashPattern: [20, 20],
              child: SizedBox(
                height: 340,
                width: 360,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => CameraScreen())));
                    },
                    child: Text(
                      "Save your Inventory",
                      style: GoogleFonts.roboto(
                          fontSize: 34, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              color: Color(0xFF969696),
            ),
            SizedBox(
              height: 28,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF00AF50)),
                  fixedSize: MaterialStateProperty.all(Size(164, 58)),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => InventoryScreen())));
                },
                child: Text("Start Listing",
                    style: GoogleFonts.inter(
                        fontSize: 16, fontWeight: FontWeight.w700)))
          ],
        ),
      ),
    );
  }
}
