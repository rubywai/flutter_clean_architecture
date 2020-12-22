import 'package:dio/dio.dart';

class ErrorType{
  ErrorType(DioError error,{int errorType}){
    errorType = error.response.statusCode;
  }
}