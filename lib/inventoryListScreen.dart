import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happylocate/submitScreen.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  int quan = 6;
  @override
  Widget build(BuildContext context) {
    var column = Column(
      children: [
        SizedBox(
          height: 35,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 96,
              width: 96,
              decoration: BoxDecoration(
                  color: Color(0xFFF1F3F4),
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Heading",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Text("Sub heading",
                    style: GoogleFonts.roboto(
                        fontSize: 12, fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 43,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.check,
                      color: Color(0xFF4CAF50),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Text("In Stock",
                        style: GoogleFonts.roboto(
                            fontSize: 12, fontWeight: FontWeight.w400))
                  ],
                )
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 45,
                  height: 30,
                  child: DropdownButtonFormField<int>(
                    iconSize: 20,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4))),
                    value: quan,
                    elevation: 0,
                    items: <int>[1, 2, 3, 4, 5, 6].map((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        quan = val!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Remove",
                  style: GoogleFonts.roboto(color: Colors.blue),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 32,
        ),
        Divider()
      ],
    );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back)),
            SizedBox(
              width: 36,
            ),
            Text(
              "Inventory List",
              style:
                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "3 items",
                          style: GoogleFonts.roboto(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Add"),
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(91, 40))),
                        )
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 300,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: ((context, index) {
                            return column;
                          })),
                    )
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.white,
                    height: 156,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 17, bottom: 12.0, right: 16, left: 16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Subtotal"),
                              Spacer(),
                              Text(
                                "43 objects",
                                style: GoogleFonts.roboto(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => SubmitScreen())));
                            },
                            child: Text("Save"),
                            style: ButtonStyle(
                                fixedSize:
                                    MaterialStateProperty.all(Size(328, 40))),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
