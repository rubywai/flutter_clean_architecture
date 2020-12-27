
import 'package:flutter_clean_architecture/features/contact_list/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';
@injectable
class DeleteContact{
  Repository _repository;
  DeleteContact(this._repository);
  Future<void> deleteContact(String id){
    return _repository.deleteContact(id);
  }
}