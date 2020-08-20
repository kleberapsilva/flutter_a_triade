import 'package:flutter_a_triade/app/repositories/i_user_repository.dart';
import 'package:flutter_a_triade/app/repositories/user_repository.dart';
import 'package:flutter_a_triade/app/services/i_user_service.dart';
import 'package:flutter_a_triade/app/services/user_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind<IUserRepository>((i) => UserRepository()),
        Bind<IUserService>((i) => UserService(i())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
