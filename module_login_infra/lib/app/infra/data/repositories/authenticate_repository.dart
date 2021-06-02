import 'package:commons/shared/auth/local_storage/interfaces/auth_repository_interface.dart';
import 'package:commons/shared/auth/models/auth_model.dart';
import 'package:commons/shared/helpers/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:module_login_domain/app/domain/entities/authenticate_entity.dart';
import 'package:module_login_domain/app/domain/errors/errors.dart';
import 'package:module_login_domain/app/domain/repositories/authenticate_repository_interface.dart';


import '../../data/datasources/authenticate_datasource_interface.dart';
import '../../models/authenticate_model.dart';

class AuthenticateRepository implements IAuthenticateRepository {
  final IAuthenticateDatasource _dataSource;
  final IAuthLocalStorage _localStorage;

  AuthenticateRepository(this._dataSource, this._localStorage);

  @override
  Future<Either<Failure, AuthModel>> authenticate(
      AuthenticateEntity resquest) async {
    try {
      var auth =
          AuthenticateModel(login: resquest.login, password: resquest.password);

      final result = await _dataSource.authenticate(auth);

      _localStorage.add(result);

      return Right(result);
    } on Failure catch (error) {
      return Left(error);
    } on Exception catch (error) {
      return Left(AuthenticateRepostoryError(message: error.toString()));
    }
  }
}
