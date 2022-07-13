// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$FeelingsApiService extends FeelingsApiService {
  _$FeelingsApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = FeelingsApiService;

  @override
  Future<Response<DetailFeeling>> feelingsData(FeelingRequest feelingRequest) {
    final $url =
        'https://www.qubehealth.com/qube_services/api/testservice/getListOfUserFeeling/';
    final $body = feelingRequest;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<DetailFeeling, DetailFeeling>($request);
  }
}
