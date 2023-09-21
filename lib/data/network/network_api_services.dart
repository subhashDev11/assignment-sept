import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime_type/mime_type.dart';
import 'package:subhash_chandra_s_application3/core/app_export.dart';
import 'package:subhash_chandra_s_application3/data/app_exception.dart';
import 'package:subhash_chandra_s_application3/data/response/custom_response_model.dart';

import 'base_api_services.dart';

class NetworkApiResponse extends BaseApiServices {
  @override
  Future<CustomResponseModel> getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(
            const Duration(milliseconds: 1500),
          );
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  @override
  Future<CustomResponseModel> getPostApiResponse(
      String url, dynamic data) async {
    dynamic responseJson;
    try {
      var headers = {'Authorization': 'Bearer $accessToken'};
      Response response = await post(
        Uri.parse(url),
        body: data,
        headers: headers,
      ).timeout(
        const Duration(milliseconds: 1500),
      );
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Exception');
    }
    return responseJson;
  }

  String getMessage(dynamic response) {
    if (response == null) {
      return "";
    } else if (response['message'] != null) {
      return response['message'];
    } else {
      return "";
    }
  }

  returnResponse(http.Response response) {
    dynamic responseJson = jsonDecode(response.body);
    switch (response.statusCode) {
      case 200:
        return CustomResponseModel(
          message: getMessage(responseJson),
          success: true,
          data: responseJson,
          statusCode: 200,
        );
      case 400:
        return CustomResponseModel(
          message: getMessage(responseJson),
          success: false,
          data: null,
          statusCode: 400,
        );
      case 404:
        return CustomResponseModel(
          message: getMessage(responseJson),
          success: false,
          data: null,
          statusCode: 404,
        );
      case 500:
        return CustomResponseModel(
          message: getMessage(responseJson),
          success: false,
          data: null,
          statusCode: 500,
        );
      default:
        return CustomResponseModel(
          message: getMessage(responseJson),
          success: false,
          data: null,
          statusCode: response.statusCode,
        );
    }
  }

  @override
  Future<CustomResponseModel> getUploadFileApiResponse({
    required String url,
    required String filepath,
    required Map<String, dynamic> dataMap,
  }) async {
    dynamic responseJson;
    try {
      var headers = {'Authorization': 'Bearer $accessToken'};
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(url),
      );
      String? mimeType = mime(filepath);
      request.files.add(
        await http.MultipartFile.fromPath(
          'profileBannerImageURL',
          filepath,
          contentType: MediaType.parse(mimeType!),
        ),
      );
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      responseJson = returnResponse(await http.Response.fromStream(response));
    } on SocketException {
      throw FetchDataException('No Internet Exception');
    }
    return responseJson;
  }
}
