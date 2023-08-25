import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/core/theme/app_theme.dart';
import 'package:to_do_app/modules/tasks_lists/widget/task_item_widget.dart';

class TasksListView extends StatelessWidget {
  static const String routeName = "tasks_list_view";

  @override
  Widget build(BuildContext context) {
    var mediaquiry = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top: 40, left: 20),
          width: mediaquiry.width,
          height: mediaquiry.height * 0.15,
          color: AppTheme.primarColor,
          child: Text(
            "To Do App",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        CalendarTimeline(
          initialDate: DateTime.now(),
          firstDate: DateTime(2023, 1, 1),
          lastDate: DateTime(2023, 12, 31),
          onDateSelected: (date) => print(date),
          leftMargin: 20,
          monthColor: Colors.black,
          dayColor: Colors.black,
          activeDayColor: AppTheme.primarColor,
          activeBackgroundDayColor: Colors.white,
          dotsColor: Color(0xFF333A47),
          locale: 'en_ISO',
          showYears: true,
        ),
        Expanded(
            child: ListView.builder(
          padding: EdgeInsets.only(top: 10),
          itemBuilder: (context, index) => TaskItemWidget(),
          itemCount: 10,
        ))
      ],
    );
  }
}
