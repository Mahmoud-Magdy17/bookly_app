import 'dart:async';

import 'package:dio/dio.dart';

class ApiServices{
  final Dio dio;

  ApiServices(this.dio);

  Future<Map<String,dynamic>> get(String endPoint) async{
    Response response =  await dio.get(endPoint);

    return response.data;
  } 

}