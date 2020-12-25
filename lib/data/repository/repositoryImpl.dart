import 'package:flutter_clean_architecture/core/connection.dart';
import 'package:flutter_clean_architecture/core/no_network_exception.dart';
import 'package:flutter_clean_architecture/data/api/api_service.dart';
import 'package:flutter_clean_architecture/domain/entity/contact.dart';
import 'package:flutter_clean_architecture/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: Repository)
class ContactRepositoryImpl implements Repository{
  final ApiService _apiService;
  final ConnectionCheck _connectionCheck;
  ContactRepositoryImpl(this._apiService,this._connectionCheck);
  @override
  Future<Contact> addContact(Contact contact) => _apiService.addContact(contact);

  @override
  Future<Contact> deleteContact(String id) => _apiService.deleteContact(id);

  @override
  Future<List<Contact>> getContact() async{
    if(await _connectionCheck.isConnect){
      return _apiService.getContact();
    }
    else throw NoNetworkingException();
  }


  @override
  Future<Contact> updateContact(String id, Contact contact) => _apiService.updateContact(id, contact);

}