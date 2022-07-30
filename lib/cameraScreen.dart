import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera/flutter_camera.dart';
import 'package:google_fonts/google_fonts.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
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
                "Camera View",
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: FlutterCamera(color: Colors.white),
              width: 343,
              height: 189,
            ),
            SizedBox(
              height: 152,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF1554F6)),
                    fixedSize: MaterialStateProperty.all(Size(149, 40)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Start Recording",
                    style: GoogleFonts.inter(
                        fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF1554F6)),
                    fixedSize: MaterialStateProperty.all(Size(149, 40)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Stop Recording",
                    style: GoogleFonts.inter(
                        fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            )
          ],
        ));
  }
}
