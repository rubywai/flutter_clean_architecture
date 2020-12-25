// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiService implements ApiService {
  _ApiService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://5f8864c8a8a2b5001641eb74.mockapi.io/api0/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<List<ContactModel>> getContact() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => ContactModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<ContactModel> addContact(contactModel) async {
    ArgumentError.checkNotNull(contactModel, 'contactModel');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(contactModel?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ContactModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<ContactModel> updateContact(id, contactModel) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(contactModel, 'contactModel');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(contactModel?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ContactModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<ContactModel> deleteContact(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ContactModel.fromJson(_result.data);
    return value;
  }
}
