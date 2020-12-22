import 'package:flutter_clean_architecture/domain/entity/contact.dart';
import 'package:flutter_clean_architecture/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';
@injectable
class GetContact{
  final Repository _repository;
  GetContact(this._repository);
  Future<List<Contact>> getContact(){
    return _repository.getContact();
  }
}