
import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/data/model/contact_model.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://5f8864c8a8a2b5001641eb74.mockapi.io/api/')
abstract class ApiService{
  factory ApiService(Dio dio) => _ApiService(dio);

  @GET('')
  Future<List<ContactModel>> getContact();
  @POST('')
  Future<ContactModel> addContact(@Body() ContactModel contactModel);
  @PUT('')
  Future<ContactModel> updateContact(@Path() String id,@Body() ContactModel contactModel);
  @DELETE('')
  Future<ContactModel> deleteContact(@Path() String id);
}