import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Couter extends Cubit<int>{

  Counter() : super(0);

  void increment() => emit(state +1);
  void increment() => emit(state -1);
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          Builder(context, count){
            return Text('Valor: $cont');
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'decrement', 
            onPressed: () => context.red<CounterCunit>().decrement(),
            child: Icon(Icons.remove),
            ),
            SizedBox(height: 20),
        ],
        ),
    ),
  }
}