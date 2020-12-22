import 'package:flutter_clean_architecture/data/api/api_service.dart';
import 'package:flutter_clean_architecture/domain/entity/contact.dart';
import 'package:flutter_clean_architecture/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

@singleton
@Injectable(as : Repository)
class ContactRepositoryImpl implements Repository{
  final ApiService _apiService;
  ContactRepositoryImpl(this._apiService);
  @override
  Future<Contact> addContact(Contact contact) => _apiService.addContact(contact);

  @override
  Future<Contact> deleteContact(String id) => _apiService.deleteContact(id);

  @override
  Future<List<Contact>> getContact() => _apiService.getContact();

  @override
  Future<Contact> updateContact(String id, Contact contact) => _apiService.updateContact(id, contact);

}