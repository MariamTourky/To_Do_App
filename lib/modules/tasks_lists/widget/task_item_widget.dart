import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/core/theme/app_theme.dart';

class TaskItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 80,
            decoration: BoxDecoration(
              color: AppTheme.primarColor,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Play Basket Ball",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: AppTheme.primarColor),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "10:30 am",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                  ),
                ],
              )
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: AppTheme.primarColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.check,
              size: 40,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
