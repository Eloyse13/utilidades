import 'package:flutter/widgets.dart';

/**
 uma stream representa uma fonte de eventos/ dados que ocorrem ao longo do tempo
 QUANDO USAR
 -quando você precisa escutar atualizações contínuas.
 -ex: GPS, mensagens de chat, digitação em tempo real,eventos de usuário

 CARACTERÍSTICAS
 -pode emitir valores com yield
 -pode durar indefinidamente
 -pode ser usada com listen ou await for
 -devemos usar async* para declarar funções assíncronas que retornam uma stream
 */

//exemplo 1 - contator de tempo
Stream<int> contarTempo() async*{
 for(int i = 0; i < 10; i++){
   await Future.delayed(Duration(seconds: 1));
   yield i; //yield serve como umemissor, ele emite a nova informaçaõ para a steam,como se fosse um return. Porém sem finalizar a função
  }
}

//exemplo 2 - simulaçaõ de chat
Stream<String> mensagemChat() async*{
  yield 'oi';
  await Future.delayed(Duration(seconds: 1));
  yield "si e vc?";
  await Future.delayed(Duration(seconds: 1));
  yield " que bom!";
  await Future.delayed(Duration(seconds: 1));
  yield "tchau.";
}

void main(List<String> args) {
  /* contarTempo().listen(
(event) => print("contagem: $event"),
onDone: () => print("strem finalizada"),
  ); */
}

/* mensagemChat Listenable (
)
