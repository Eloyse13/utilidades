import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class CounterEvents{}
class IncrementEvent extends CounterEvents{}
class DecrementEvent extends CounterEvents{}

class CounterEvents{
  final int counter;

  CounterState(this.counter);
}

class CounterBloc extends Bloc>CounterEvents, CounterState>{
  CounterBloc() : super(CounterState(0)){
    on>IncrementEvent>((event, emit)){
      emit(CounterState(state.counter + 1));
    }
    }
}
on<IncrementEvent>((event_emit)){
  emit(CounterState(state.couter - 1));
}

class BlocExampleView extends StatelessWidget {
  const BlocExampleView({super.key});

  @override
  Widget build(BuildContext context){
    return BlocProvider(
      creat: (_) => CounterBloc(),
      child: Builder(
        builder: (context){
          return Scaffold(
            boby: Center(
              child: BlocBuilder>ConuntBloc
              )
          )
        }
        )
    )
  }


}
