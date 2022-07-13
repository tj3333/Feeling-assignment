import 'package:intl/intl.dart';
import 'package:tejas_s_application1/controller/feeling_controller.dart';

import 'widgets/calendar_item_widget.dart';
import 'widgets/emoticon_item_widget.dart';
import 'widgets/listtime_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tejas_s_application1/core/app_export.dart';

import 'widgets/video_widget.dart';

class FeelingsScreen extends GetWidget<FeelingController> {

  Widget _circularProgressbar() {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircularProgressIndicator(
            )
          ],
        ));
  }

  late DateTime lastDayOfMonth;

  @override
  Widget build(BuildContext context) {

    lastDayOfMonth = DateTime.now().subtract(Duration(days: 30));




    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "msg_your_feelings_h".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: AppStyle
              .textstylesfproroundedsfroundedultralight20
              .copyWith(
            fontSize: getFontSize(
              18,
            ),
            fontWeight: FontWeight.bold
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black87), // set your color here
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Obx(() => controller.isLoading.value ? _circularProgressbar() : _bodyWidget()),
    );
  }

  Widget _bodyWidget(){

    return Container(
      width: size.width,
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstant.gray50,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      22.00,
                    ),
                    top: getVerticalSize(
                      40.00,
                    ),
                    right: getHorizontalSize(
                      22.00,
                    ),
                  ),
                  child: Text(
                    "msg_your_feelings_f".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: AppStyle
                        .textstylesfproroundedsfroundedultralight16
                        .copyWith(
                      fontSize: getFontSize(
                        16,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      10.00,
                    ),
                  ),
                  child: Container(
                    height: 90,
                    child:ListView.builder(
                      padding: EdgeInsets.only(left: 20),
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return EmoticonItemWidget(
                          emoticonObject: controller.emoticonList[index],
                        );
                      },
                    ),
                  )
                ),
              ),
              Container(
                height: getVerticalSize(
                  0.50,
                ),
                width: size.width,
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    10.00,
                  ),
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.black90075,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(
                    left: getHorizontalSize(
                      22.00,
                    ),
                    top: getVerticalSize(
                      9.80,
                    ),
                    right: getHorizontalSize(
                      20.00,
                    ),
                  ),
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
                    bottom: getVerticalSize(
                      5.00,
                    ),
                  ),
                  decoration: AppDecoration
                      .textstylesfproroundedsfroundedultralight122,
                  child: Text(
                    getDateFormat(controller.selectedDateTime.toString(), "yyyy-MM-dd HH:mm:ss", "dd MMM,yyyy"),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: AppStyle
                        .textstylesfproroundedsfroundedultralight122
                        .copyWith(
                      fontSize: getFontSize(
                        10,
                      ),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Container(
                child: CalendarAppBar(lastDayOfMonth: lastDayOfMonth,),
                margin: EdgeInsets.only(left: 10,top: 15),
              ),
              if(controller.feelingObject.value.feelingList.isNotEmpty)
                Container(
                  height: getVerticalSize(
                    0.50,
                  ),
                  width: size.width,
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      24.00,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.black90063,
                  ),
                ),
              if(controller.feelingObject.value.feelingList.isNotEmpty)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        22.00,
                      ),
                      top: getVerticalSize(
                        13.00,
                      ),
                      right: getHorizontalSize(
                        22.00,
                      ),
                    ),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.feelingObject.value.feelingList.length,
                      itemBuilder: (context, index) {
                        return ListtimeItemWidget(feeling: controller.feelingObject.value.feelingList[index],);
                      },
                    ),
                  ),
              ),
              if(controller.feelingObject.value.videoArr.isNotEmpty)
                Container(
                height: getVerticalSize(
                  0.50,
                ),
                width: size.width,
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    14.00,
                  ),
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.black90063,
                ),
              ),
              if(controller.feelingObject.value.videoArr.isNotEmpty)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        20.00,
                      ),
                      top: getVerticalSize(
                        31.00,
                      ),
                      right: getHorizontalSize(
                        20.00,
                      ),
                    ),
                    child: Text(
                      "msg_you_may_find_th".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .textstylesfproroundedsfroundedultralight18
                          .copyWith(
                        fontSize: getFontSize(
                          18,
                        ),
                        height: 1.00,
                      ),
                    ),
                  ),
                ),
              if(controller.feelingObject.value.videoArr.isNotEmpty)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: getHorizontalSize(
                      352.00,
                    ),
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        20.00,
                      ),
                      top: getVerticalSize(
                        10.00,
                      ),
                      right: getHorizontalSize(
                        20.00,
                      ),
                    ),
                    child: Text(
                      "msg_lorem_ipsum_dol".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .textstylesfproroundedsfroundedultralight141
                          .copyWith(
                        fontSize: getFontSize(
                          14,
                        ),
                        color: Colors.black38,
                        height: 1.29,
                      ),
                    ),
                  ),
              ),
              if(controller.feelingObject.value.videoArr.isNotEmpty)
                Align(
                alignment: Alignment.centerLeft,
                child:  VideoWidget(videoList:controller.feelingObject.value.videoArr ,)
              ),
            ],
          ),
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

class EmoticonListObject {
  final String name;
  final String percentage;
  final String imageName;

  EmoticonListObject(this.name, this.percentage, this.imageName);

}
