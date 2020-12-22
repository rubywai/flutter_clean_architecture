part of 'get_contact_cubit.dart';

abstract class GetContactState extends Equatable {
  const GetContactState();
}

class GetContactInitial extends GetContactState {
  @override
  List<Object> get props => [];
}
class GetContactLoading extends GetContactState {
  @override
  List<Object> get props => [];
}


class GetContactSuccess extends GetContactState{
  final List<Contact> contact;

  GetContactSuccess(this.contact);
  @override
  List<Object> get props => [contact];
}
class GetContactFailed extends GetContactState{
  final String error;
  GetContactFailed(this.error);
  @override
  List<Object> get props => [error];
}
class GetContactConnectionFailed extends GetContactState{
  @override
  List<Object> get props => [];
}
