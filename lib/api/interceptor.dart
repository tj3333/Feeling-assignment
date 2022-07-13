import 'dart:async';

import 'package:chopper/chopper.dart';


class Interceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    Map<String, String> modifiedHeader = Map.from(request.headers);

    modifiedHeader.putIfAbsent('X-Api-Key',
        () => 'f6d646a6c2f2df883ea0cccaa4097358ede98284');

    Request modified = Request(
      request.method,
      request.url,
      request.baseUrl,
      body: request.body,
      headers: modifiedHeader,
      multipart: request.multipart,
      parameters: request.parameters,
      parts: request.parts,
    );

    return modified;
  }

  Future<bool> logParts(List<PartValue> parts) async {
    for (int i = 0; i < parts.length; i++) {
      print(parts[i].name + " : " + parts[i].value);
    }
    return true;
  }
}
