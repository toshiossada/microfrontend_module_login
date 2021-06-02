import 'package:flutter_modular/flutter_modular.dart';
import 'package:module_login_domain/app/domain/repositories/authenticate_repository_interface.dart';
import 'package:module_login_domain/app/domain/usecases/interfaces/post_authenticate_by_login_interface.dart';
import 'package:module_login_domain/app/domain/usecases/post_authenticate_by_login.dart';
import 'package:module_login_infra/app/infra/data/datasources/authenticate_datasource_interface.dart';
import 'package:module_login_infra/app/infra/data/repositories/authenticate_repository.dart';
import 'package:module_login_infra/app/infra/external/datasources/authenticate_datasource.dart';
import 'package:module_login_presenter/app/presenter/pages/login/login_controller.dart';
import 'package:module_login_presenter/app/presenter/pages/login/login_page.dart';



class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginController(i(), i())),
    Bind.lazySingleton<IPostAuthenticateByLogin>(
        (i) => PostAuthenticateByLogin(i())),
    Bind.lazySingleton<IAuthenticateRepository>(
        (i) => AuthenticateRepository(i(), i())),
    Bind.lazySingleton<IAuthenticateDatasource>(
        (i) => AuthenticateDatasource(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
  ];
}
