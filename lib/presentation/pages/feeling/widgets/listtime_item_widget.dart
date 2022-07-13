import 'package:intl/intl.dart';
import 'package:tejas_s_application1/controller/feeling_controller.dart';

import 'package:flutter/material.dart';
import 'package:tejas_s_application1/core/app_export.dart';
import 'package:tejas_s_application1/entities/feeling.dart';

// ignore: must_be_immutable
class ListtimeItemWidget extends StatelessWidget {
  ListtimeItemWidget({required this.feeling});

  final Feeling feeling;

  var controller = Get.find<FeelingController>();

  String feelingImageName = "";

  @override
  Widget build(BuildContext context) {

    for(int i=0;i<controller.emoticonList.length;i++){
      if(feeling.feelingName==controller.emoticonList[i].name){
        feelingImageName = controller.emoticonList[i].imageName;
      }
    }

    DateTime submitDateTime = DateTime.parse(feeling.submitTime);
    DateTime subtractedDateTime = submitDateTime.subtract(Duration(hours: 2));
    DateTime addedDateTime = submitDateTime.add(Duration(hours: 1));
    String startTime = getDateFormat(subtractedDateTime.toString(), "yyyy-MM-dd HH:mm:ss","hh a");
    String endTime = getDateFormat(addedDateTime.toString(), "yyyy-MM-dd HH:mm:ss","hh a");

    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          top: getVerticalSize(
            14.00,
          ),
          right: getHorizontalSize(
            8.00,
          ),
          bottom: getVerticalSize(
            14.00,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  2.00,
                ),
                bottom: getVerticalSize(
                  2.00,
                ),
              ),
              child: Text(
                "$startTime - $endTime",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppStyle.textstylesfproroundedsfroundedultralight12
                    .copyWith(
                  fontSize: getFontSize(
                    12,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  35.00,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    9.00,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        48.00,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            9.00,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                2.00,
                              ),
                              bottom: getVerticalSize(
                                1.00,
                              ),
                            ),
                            child: Image.asset(
                              feelingImageName,
                              height: getSize(
                                15.00,
                              ),
                              width: getSize(
                                15.00,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            feeling.feelingName,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .textstylesfproroundedsfroundedultralight14
                                .copyWith(
                              fontSize: getFontSize(
                                14,
                              ),
                              height: 1.29,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  static String getDateFormat(String date,String ipDf,String opDf){
    DateTime parseDate = new DateFormat(ipDf).parse(date);
    var inputDate = DateTime.parse(parseDate.toString());
    var outputFormat = DateFormat(opDf);
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }
}
