// provider de controle de estado
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final contadorProvider = StateProvider((ref) => 0) ;

//uso na ui
class RiverpodExemple extends ConsumerWidget{

  @override
  Widget build(BuildContext context , WidgetRef) {

    //subtitui o setState
    final contador = ref.watch(contadorProvider);

    return Scaffold(
      body: Center(child: Text("Vlor: $contador"),),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(contadorProvider.notifier).state++,
        child: Icon(Icons.add),
        ),
    );
  }
}