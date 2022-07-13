import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:tejas_s_application1/entities/detail_feeling.dart';
import 'package:tejas_s_application1/entities/feeling.dart';
import 'package:tejas_s_application1/entities/feeling_object.dart';
import 'package:tejas_s_application1/entities/feeling_percentage.dart';
import 'package:tejas_s_application1/entities/feeling_request.dart';
import 'package:tejas_s_application1/entities/video.dart';

import 'converter.dart';
import 'interceptor.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: 'https://www.qubehealth.com/qube_services/api/')
abstract class FeelingsApiService extends ChopperService {
  /// import 'package:http/http.dart' show MultipartFile;

  @Post(path: 'testservice/getListOfUserFeeling/')
  Future<Response<DetailFeeling>> feelingsData(
    @body FeelingRequest feelingRequest,
  );

  static FeelingsApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://www.qubehealth.com/qube_services/api/',
      services: [
        _$FeelingsApiService(),
      ],
      //converter: BuiltValueConverter(),
      //converter: FormUrlEncodedConverter(),
      converter: JsonSerializableConverter(const {
        DetailFeeling: DetailFeeling.fromJsonFactory,
        Feeling: Feeling.fromJsonFactory,
        FeelingObject: FeelingObject.fromJsonFactory,
        FeelingPercentage: FeelingPercentage.fromJsonFactory,
        Video: Video.fromJsonFactory,
        FeelingRequest: FeelingRequest.fromJsonFactory,
      }),
      //errorConverter: BuiltValueConverter(),
      //converter: FormUrlEncodedConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        Interceptor(),
        (Response response) async {
          print("Api Response => " + response.bodyString);
          if (response.statusCode == 404) {
            chopperLogger.severe('404 NOT FOUND');
          }
          return response;
        },
      ],
    );
    return _$FeelingsApiService(client);
  }
}
