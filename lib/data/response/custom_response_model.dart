
class CustomResponseModel{
  final String message;
  final int statusCode;
  final dynamic data;
  final bool success;

  CustomResponseModel({
    required this.message,
    required this.statusCode,
    required this.data,
    required this.success,
  });
}