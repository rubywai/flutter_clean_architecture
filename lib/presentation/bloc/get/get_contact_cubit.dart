import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/core/connection.dart';
import 'package:flutter_clean_architecture/core/error_type.dart';
import 'package:flutter_clean_architecture/di/injection.dart';
import 'package:flutter_clean_architecture/domain/entity/contact.dart';
import 'package:flutter_clean_architecture/domain/usage/get_contact.dart';
import 'package:injectable/injectable.dart';

part 'get_contact_state.dart';


@injectable
class GetContactCubit extends Cubit<GetContactState> {
  final GetContact _getContact;
  final ConnectionCheck _connectionCheck;

  GetContactCubit(this._getContact,this._connectionCheck) : super(GetContactInitial());
  void getContact() async {
    emit(GetContactLoading());
    if (true) {
      print('is connected');
      try {
        List<Contact> contact = await _getContact.getContact();
        emit(GetContactSuccess(contact));
      }
      //non 200
      catch (e) {
        int code;
        if (e is DioError) {
          ErrorType(e,errorType: code);
          emit(GetContactFailed('Error $code'));
        }
      }
    }
    else
      emit(GetContactConnectionFailed());
  }
}
