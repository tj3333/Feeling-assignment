import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tejas_s_application1/controller/feeling_controller.dart';
import 'package:tejas_s_application1/core/app_export.dart';
import 'package:tejas_s_application1/entities/video.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class VideoWidget extends StatelessWidget {
  final List<Video> videoList;

  var controller = Get.find<FeelingController>();

  VideoWidget({Key? key, required this.videoList}) : super(key: key);

  Future<void> _launchInBrowser(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(
        left: getHorizontalSize(
          22.00,
        ),
        top: getVerticalSize(
          15.00,
        ),
        bottom: getVerticalSize(
          72.00,
        ),
      ),
      physics: const ClampingScrollPhysics(),
      child: Row(
          children: List.generate(
        videoList.length,
        (index) => InkWell(
          onTap: ()async{
            await _launchInBrowser(videoList[index].youtubeUrl);
          },
          child: Container(
              height: getVerticalSize(
                128.00,
              ),
              width: getHorizontalSize(
                208.00,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          10.00,
                        ),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: getYoutubeVideoUrl(videoList[index].youtubeUrl),
                        height: getVerticalSize(
                          128.00,
                        ),
                        width: getHorizontalSize(
                          208.00,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          40.00,
                        ),
                        top: getVerticalSize(
                          40.00,
                        ),
                        right: getHorizontalSize(
                          40.00,
                        ),
                        bottom: getVerticalSize(
                          40.00,
                        ),
                      ),
                      child: Image.asset(
                        ImageConstant.imgRectangle277,
                        height: getSize(
                          35.00,
                        ),
                        width: getSize(
                          35.00,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
        )),
      )),
    );
  }

  String? convertUrlToId(String url, {bool trimWhitespaces = true}) {
    if (!url.contains("http") && (url.length == 11)) return url;
    if (trimWhitespaces) url = url.trim();

    for (var exp in [
      RegExp(
          r"^https:\/\/(?:www\.|m\.)?youtube\.com\/watch\?v=([_\-a-zA-Z0-9]{11}).*$"),
      RegExp(
          r"^https:\/\/(?:www\.|m\.)?youtube(?:-nocookie)?\.com\/embed\/([_\-a-zA-Z0-9]{11}).*$"),
      RegExp(r"^https:\/\/youtu\.be\/([_\-a-zA-Z0-9]{11}).*$")
    ]) {
      Match? match = exp.firstMatch(url);
      if (match != null && match.groupCount >= 1) return match.group(1);
    }

    return null;
  }

  String getThumbnail({
    required String videoId,
    bool webp = true,
  }) =>
      webp
          ? 'https://i3.ytimg.com/vi_webp/$videoId/1.webp'
          : 'https://i3.ytimg.com/vi/$videoId/1.jpg';

  String getYoutubeVideoUrl(String youtubeUrl){
    String? videoId = convertUrlToId(
       youtubeUrl);
    String thumbnailUrl = getThumbnail(videoId: videoId ?? "");
    return thumbnailUrl;

  }

}
