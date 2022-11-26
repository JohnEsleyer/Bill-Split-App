import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class BillSplit extends StatefulWidget {
  @override
  _BillSplitState createState() => _BillSplitState();
}

class _BillSplitState extends State<BillSplit> {
  TextStyle infostyle = GoogleFonts.montserrat(
      fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 40),
                child: Text("Split Bill",
                    style: GoogleFonts.montserrat(
                        fontSize: 25, fontWeight: FontWeight.w700))),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(color: Colors.yellow),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.montserrat(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "34",
                          style: GoogleFonts.montserrat(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Friends", style: infostyle),
                            Text("Tax", style: infostyle),
                            Text("Tip", style: infostyle),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("10", style: infostyle),
                            Text("14 %", style: infostyle),
                            Text("15", style: infostyle),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "How many friends ?",
              style: GoogleFonts.montserrat(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            Slider(
                min: 0, //Minimum friends
                max: 15, //Maximum friends
                divisions: 15,
                activeColor: Colors.orange,
                inactiveColor: Colors.grey,
                value: 12,
                onChanged: (value) {}),
          ],
        ),
      ),
    );
  }
}
