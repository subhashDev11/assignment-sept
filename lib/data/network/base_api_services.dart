import 'package:subhash_chandra_s_application3/data/response/custom_response_model.dart';

abstract class BaseApiServices {
  Future<CustomResponseModel> getGetApiResponse(String url);

  Future<CustomResponseModel> getPostApiResponse(String url, dynamic data);
  Future<CustomResponseModel> getUploadFileApiResponse({
    required String url,
    required String filepath,
    required Map<String,dynamic> dataMap,
  });
}
