import 'package:tejas_s_application1/controller/feeling_controller.dart';

import 'package:flutter/material.dart';
import 'package:tejas_s_application1/core/app_export.dart';
import 'package:tejas_s_application1/entities/feeling_percentage.dart';
import 'package:tejas_s_application1/presentation/pages/feeling/feeling_screen.dart';

// ignore: must_be_immutable
class EmoticonItemWidget extends StatelessWidget {

  final EmoticonListObject emoticonObject;

  EmoticonItemWidget({required this.emoticonObject});

  var controller = Get.find<FeelingController>();

  @override
  Widget build(BuildContext context) {
    return Opacity(opacity: emoticonObject.percentage.isNotEmpty && emoticonObject.percentage!="0" ? 1 : 0.5,child: IntrinsicWidth(
      child: Padding(
        padding: EdgeInsets.only(
          right: getHorizontalSize(
            5.00,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: getHorizontalSize(
                40.00,
              ),
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  2.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray100,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstant.black90019,
                    spreadRadius: getHorizontalSize(
                      2.00,
                    ),
                    blurRadius: getHorizontalSize(
                      2.00,
                    ),
                    offset: Offset(
                      4,
                      4,
                    ),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        16.00,
                      ),
                    ),
                    child: Text(
                      emoticonObject.percentage.isNotEmpty && emoticonObject.percentage!="0" ?"${emoticonObject.percentage}%":"",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.textstylesfproroundedsfroundedultralight12
                          .copyWith(
                        fontSize: getFontSize(
                          10,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          15.00,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        constraints: BoxConstraints(
                          minHeight: getSize(
                            50.00,
                          ),
                          minWidth: getSize(
                            50.00,
                          ),
                        ),
                        padding: EdgeInsets.all(0),
                        icon: Container(
                          width: getSize(
                            50.00,
                          ),
                          height: getSize(
                            50.00,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.lightGreen500,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              10.00,
                            ),
                            top: getVerticalSize(
                              10.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              10.00,
                            ),
                          ),
                          child: Image.asset(
                            emoticonObject.imageName,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  10.00,
                ),
                right: getHorizontalSize(5)
              ),
              child: Text(
                emoticonObject.name,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppStyle.textstylesfproroundedsfroundedultralight12
                    .copyWith(
                  fontSize: getFontSize(
                    10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),);
  }
}
