// Mocks generated by Mockito 5.0.9 from annotations
// in module_login_infra/test/app/infra/data/repositories/authenticate_repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:commons/shared/auth/local_storage/interfaces/auth_repository_interface.dart'
    as _i6;
import 'package:commons/shared/auth/models/auth_model.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:module_login_infra/app/infra/data/datasources/authenticate_datasource_interface.dart'
    as _i3;
import 'package:module_login_infra/app/infra/models/authenticate_model.dart'
    as _i5;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeAuthModel extends _i1.Fake implements _i2.AuthModel {}

/// A class which mocks [IAuthenticateDatasource].
///
/// See the documentation for Mockito's code generation for more information.
class MockIAuthenticateDatasource extends _i1.Mock
    implements _i3.IAuthenticateDatasource {
  MockIAuthenticateDatasource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.AuthModel> authenticate(_i5.AuthenticateModel? auth) =>
      (super.noSuchMethod(Invocation.method(#authenticate, [auth]),
              returnValue: Future<_i2.AuthModel>.value(_FakeAuthModel()))
          as _i4.Future<_i2.AuthModel>);
}

/// A class which mocks [IAuthLocalStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockIAuthLocalStorage extends _i1.Mock implements _i6.IAuthLocalStorage {
  MockIAuthLocalStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<dynamic> add(_i2.AuthModel? auth) =>
      (super.noSuchMethod(Invocation.method(#add, [auth]),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<List<_i2.AuthModel>> getAll() =>
      (super.noSuchMethod(Invocation.method(#getAll, []),
              returnValue: Future<List<_i2.AuthModel>>.value(<_i2.AuthModel>[]))
          as _i4.Future<List<_i2.AuthModel>>);
  @override
  _i4.Future<_i2.AuthModel> get(int? id) =>
      (super.noSuchMethod(Invocation.method(#get, [id]),
              returnValue: Future<_i2.AuthModel>.value(_FakeAuthModel()))
          as _i4.Future<_i2.AuthModel>);
  @override
  _i4.Future<dynamic> update(_i2.AuthModel? model) =>
      (super.noSuchMethod(Invocation.method(#update, [model]),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> remove(_i2.AuthModel? user) =>
      (super.noSuchMethod(Invocation.method(#remove, [user]),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> clear() =>
      (super.noSuchMethod(Invocation.method(#clear, []),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
}
