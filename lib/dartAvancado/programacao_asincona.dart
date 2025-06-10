import 'package:flutter/widgets.dart';

/**
 programação assincrona é um modelo de programação onde as operações que podem levar tempo para serem concluidas (como chamadas de rede,
 xleitura de arquivos ou espera por eventos)saõ executadas sem bloquear o fluxo principal do programa.

 CONCEITO TÉCNICO
 em vez de esperar uma tarefa demra terminar antes de continuar, a programação assincrona regristra um calback (funçaõ de retorno) ou
 usa estrutura como Future, Stream, async/await para delegar a tarefa e continuar executando o restante do código. Quando a tarefa,
o resultado é entregue automaticamente.

NO DART
Future<T> => representa um aoperaão assícona que eventualmente retorna um valor do tipo

async e await => permite escrever código assincrono como se fosse sícono

Streamt<T> => representa uma sequência assíncona de valores (ex: eventos, dados em série)
 */

void main(List<String> args) {
  imprimeNumeros();
  }
  
  imprimeNumeros() async{
  numero1();
 await numero2(); // agarde o resultado da função
  numero3();
  }
  void numero1(){
    print("numero 1");
  }
   Future<void> numero2(){
   return Future.delayed(Duration(seconds: 2), ()=> print("numero 2"));
  }
  void numero3(){
    print("numero 3");
  }



