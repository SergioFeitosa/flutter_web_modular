import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web_modular/src/modules/core/core_module.dart';
import 'package:flutter_web_modular/src/modules/home/home_page.dart';
import 'package:flutter_web_modular/src/modules/pessoa/pessoa_module.dart';

class HomeModule extends Module {

   @override
   List<Bind> get binds => [
    //Bind.singleton<PessoaRepository>((i) => PessoaRepositoryImpl()),
    //Bind.instance<PessoaRepository>(PessoaRepositoryImpl()),
    //Bind.factory<PessoaRepository>((i) => PessoaRepositoryImpl())
   ];

   @override
  List<Module> get imports => [
    CoreModule(),
    PessoaModule(),
    ];

   @override
   List<ModularRoute> get routes => [
      ChildRoute('/', child: (context, args) => const HomePage()),
      ChildRoute('/:id/batata', child: (context, args) => const HomePage())
      
   ];

}