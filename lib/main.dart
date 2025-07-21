import 'package:flutter/material.dart';
import 'package:utilizades/dartAvancado/future/login.dart';
import 'package:utilizades/dartAvancado/isolate/product_parse.dart';
import 'package:utilizades/src/app/app_widget.dart';
import 'package:utilizades/src/view/counter_cubit.dart';

void main() {
  //runApp(AppWidget());
 /*
 * riverpod - é uma biblioteca de gerenciamento de estado desenvolvida por Remi Rousselet (criador do provider).ele foi criado para
 * corrigir limitaç~~~~~~oes do provider e oferecer uma abordagem mais robusca, segura e flexível.
 
  vantagens
 - seguro em tempo de compilação: destecta erros mais cedo
 - não depende de BuildContext
 - testável e modular
 - suporte nativo para providers assincrons, como FtutureProvider e StreamProvider
  
  --------------------------------------------------

  BloC - Business Logic Component 
  é um padrão de arquitetura que separa a lógica de negócios da interface de usúario usando streams.
  Ele foi criado peo Google para facilitar o reuso da lógica em vários widgets.

  vantagens
  - muito usado em apps corporativos
  - força uma arquitetura bem definida
  -baseado em streams (fluxo de dados)

  conceitos principais
  - event: entrada enviada pelo usúario
  - state: saída do bloco
  - bloc: recebe eventos e emite estados

  para usar precisamos instalar o pacote flutter_bloc

  bloc = cubit

  cubit é uma versão mais simples e direta do bloc, sem eventos, você apenas chama métodos e emite estados diretamente


  */

runApp( myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: CounterPage(),
      ),
    );
  }


}


