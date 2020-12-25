import 'package:dio/dio.dart';

class ErrorType{
  ErrorType(DioError error,{Function errorType}){
    errorType(error.response.statusCode);
  }
}