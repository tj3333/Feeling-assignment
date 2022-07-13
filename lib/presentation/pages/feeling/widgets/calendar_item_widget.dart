import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tejas_s_application1/controller/feeling_controller.dart';
import 'package:tejas_s_application1/core/app_export.dart';

class CalendarAppBar extends StatefulWidget implements PreferredSizeWidget {

  final DateTime lastDayOfMonth;
  const CalendarAppBar({Key? key,required this.lastDayOfMonth}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(148.0);

  @override
  State<CalendarAppBar> createState() => _CalendarAppBarState();
}

// ignore: must_be_immutable
class _CalendarAppBarState extends State<CalendarAppBar> {
  int selectedIndex = 0;
  var controller = Get.find<FeelingController>();

  late DateTime lastDayOfMonth;
  @override
  void initState() {
    super.initState();
    selectedIndex = controller.selectedIndex.value;
    lastDayOfMonth = widget.lastDayOfMonth;
  }

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const ClampingScrollPhysics(),
      child: Row(
        children: List.generate(
          lastDayOfMonth.day,
          (index) {
            final currentDate = lastDayOfMonth.add(Duration(days: index));
            final dayName = DateFormat('E').format(currentDate);
            final day = DateFormat('dd').format(currentDate);

            return GestureDetector(
                onTap: () => setState(() {
                        controller.selectedIndex.value = index;
                        controller.selectedDateTime.value = lastDayOfMonth.add(Duration(days: index));
                        controller.getFeelingDetails();
                      },
                    ),
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: selectedIndex == index
                          ? ColorConstant.gray800
                          : Colors.white,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          10.00,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  5.00,
                                ),
                                top: getVerticalSize(
                                  5.00,
                                ),
                                right: getHorizontalSize(
                                  5.00,
                                ),
                              ),
                              child: Text(
                                dayName.substring(0, 2),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle
                                    .textstylesfproroundedsfroundedultralight15
                                    .copyWith(
                                  fontSize: getFontSize(
                                    15,
                                  ),
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black54,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                10.00,
                              ),
                              top: getVerticalSize(
                                4.00,
                              ),
                              right: getHorizontalSize(
                                10.00,
                              ),
                              bottom: getVerticalSize(
                                25.00,
                              ),
                            ),
                            child: Text(
                              "$day",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle
                                  .textstylesfproroundedsfroundedultralight152
                                  .copyWith(
                                fontSize: getFontSize(
                                  15,
                                ),
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )));
          },

        ),
      ),
    );
  }
}
