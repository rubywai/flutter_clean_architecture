import 'package:flutter_clean_architecture/domain/entity/contact.dart';

abstract class Repository{
  Future<List<Contact>> getContact();
  Future<Contact> addContact(Contact contact);
  Future<Contact> updateContact(String id,Contact contact);
  Future<Contact> deleteContact(String id);
}