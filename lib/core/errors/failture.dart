import 'package:dio/dio.dart';

abstract class Failture {
  final String dioError;

  Failture(this.dioError);
}

class ServerFailture extends Failture {
  ServerFailture(super.dioError);

  factory ServerFailture.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailture("Connection timeout with API");
      case DioExceptionType.sendTimeout:
        return ServerFailture("Send timeout with API");
      case DioExceptionType.receiveTimeout:
        return ServerFailture("Recieve timeout with API");
      case DioExceptionType.badCertificate:
        return ServerFailture("Bad Certificate while connection with API");
      case DioExceptionType.badResponse:
        Response response = dioError.response!;
        int statusCode = response.statusCode!;
        return ServerFailture.withResponse(statusCode, dioError);
      case DioExceptionType.cancel:
        return ServerFailture("Connection canceled with API");
      case DioExceptionType.connectionError:
        return ServerFailture("Intenet error while connecting with API");
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailture("Intenet error while connecting with API");
        }
      return ServerFailture("OOPS, there are an error");
    }
  }
  factory ServerFailture.withResponse(int statusCode, dynamic dioError) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return dioError["error"]["message"];
    }
    if (statusCode == 404) {
      return ServerFailture("Your request not found, please try again later!");
    }
    if (statusCode == 500) {
      return ServerFailture("Internal Server Error, please try again later!");
    }
    return ServerFailture("OOPS, there are an error");
  }
}
