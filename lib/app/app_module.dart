import 'package:flutter_a_triade/app/modules/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_a_triade/app/app_widget.dart';

import 'modules/login/login_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (context, args) => SplashPage(),),
        Router('/login', module: LoginModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
