
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tejas_s_application1/core/utils/image_constant.dart';
import 'package:tejas_s_application1/entities/detail_feeling.dart';
import 'package:tejas_s_application1/entities/feeling.dart';
import 'package:tejas_s_application1/entities/feeling_object.dart';
import 'package:tejas_s_application1/entities/feeling_percentage.dart';
import 'package:tejas_s_application1/entities/feeling_request.dart';
import 'package:tejas_s_application1/presentation/pages/feeling/feeling_screen.dart';

import '../api/api_service.dart';

class FeelingController extends GetxController {
  var isLoading = true.obs;
  var detailFeeling = DetailFeeling().obs;
  var feelingObject = FeelingObject().obs;
  var feelingPercentage = FeelingPercentage().obs;

  //Emoticon fields
  List<EmoticonListObject> emoticonList= List<EmoticonListObject>.from([]).obs;

  //Calendar fields
  var selectedIndex = 0.obs;
  var selectedDateTime = DateTime.now().subtract(Duration(days: 30)).obs;

  @override
  void onInit() {
    fetchFeelingDetails();
    super.onInit();
  }

  void fetchFeelingDetails() async {
    try {
      isLoading(true);

      FeelingsApiService feelingsApiService = Get.find();
      var res = await feelingsApiService.feelingsData(FeelingRequest(userId: "3206161992",feelingDate: getDateFormat(selectedDateTime.value.toString(),"yyyy-MM-dd HH:mm:ss","dd-MM-yyyy")));

      if(res.body!=null){
        detailFeeling.value = res.body!;
        if(detailFeeling.value.data!=null){
          feelingObject.value = detailFeeling.value.data!;
          if(feelingObject.value.feelingPercentage!=null){
            feelingPercentage.value = feelingObject.value.feelingPercentage!;
            emoticonList.addAll(getEmoticonData(feelingPercentage.value));
          }
        }
        isLoading(false);
      }
    } finally {
      isLoading(false);
    }
  }

  List<EmoticonListObject> getEmoticonData(FeelingPercentage feelingPercentage){
    List<EmoticonListObject> emoticonList= [];
    emoticonList.add(EmoticonListObject("Energetic", feelingPercentage.energetic, ImageConstant.imgGroup1));
    emoticonList.add(EmoticonListObject("Sad", feelingPercentage.sad, ImageConstant.imgGroup2));
    emoticonList.add(EmoticonListObject("Happy", feelingPercentage.happy, ImageConstant.imgGroup3));
    emoticonList.add(EmoticonListObject("Angry", feelingPercentage.angry, ImageConstant.imgGroup4));
    emoticonList.add(EmoticonListObject("Calm", feelingPercentage.calm, ImageConstant.imgGroup5));
    emoticonList.add(EmoticonListObject("Bored", feelingPercentage.bored, ImageConstant.imgGroup6));
    emoticonList.add(EmoticonListObject("Love", feelingPercentage.love, ImageConstant.imgGroup7));
    return emoticonList;
  }


  void getFeelingDetails() async {
    try {
      isLoading(true);

      FeelingsApiService feelingsApiService = Get.find();
      var res = await feelingsApiService.feelingsData(FeelingRequest(userId: "3206161992",feelingDate: getDateFormat(selectedDateTime.value.toString(),"yyyy-MM-dd HH:mm:ss","dd-MM-yyyy")));

      if(res.body!=null){
        detailFeeling.value = res.body!;
        if(detailFeeling.value.data!=null){
          feelingObject.value = detailFeeling.value.data!;
          if(feelingObject.value.feelingPercentage!=null){
            feelingPercentage.value = feelingObject.value.feelingPercentage!;
          }
        }
        isLoading(false);
      }
    } finally {
      isLoading(false);
    }
  }

  static String getDateFormat(String date,String ipDf,String opDf){
    DateTime parseDate = new DateFormat(ipDf).parse(date);
    var inputDate = DateTime.parse(parseDate.toString());
    var outputFormat = DateFormat(opDf);
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

}