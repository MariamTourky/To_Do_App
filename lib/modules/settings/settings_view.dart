import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/theme/app_theme.dart';

class SettingsView extends StatelessWidget {
  static const String routeName = "settings_view";

  @override
  Widget build(BuildContext context) {
    var mediaquiry = MediaQuery
        .of(context)
        .size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top: 40, left: 20),
          width: mediaquiry.width,
          height: mediaquiry.height * 0.15,
          color: AppTheme.primarColor,
          child: Text(
            "Settings",
            style:
            GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("Language",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            width: mediaquiry.width,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppTheme.primarColor,
              ),
              color: Colors.white,

            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "English",
                    style: TextStyle(
                      color: AppTheme.primarColor,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),

                  ),
                  Icon(Icons.arrow_drop_down_sharp,
                      color: AppTheme.primarColor),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("Mode",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            width: mediaquiry.width,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppTheme.primarColor,
              ),
              color: Colors.white,

            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Light",
                    style: TextStyle(
                      color: AppTheme.primarColor,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),

                  ),
                  Icon(Icons.arrow_drop_down_sharp,
                      color: AppTheme.primarColor),
                ],
              ),
            ),
          ),
        ),


      ],
    );
  }
}
