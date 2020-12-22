
import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/data/model/contact_model.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';
@RestApi(baseUrl: 'https://5f8864c8a8a2b5001641eb74.mockapi.io/api/')
abstract class ApiService{
  factory ApiService(Dio dio) => _ApiService(dio);
  Future<List<ContactModel>> getContact();
  Future<ContactModel> addContact(ContactModel contactModel);
  Future<ContactModel> updateContact(String id,ContactModel contactModel);
  Future<ContactModel> deleteContact(String id);

}