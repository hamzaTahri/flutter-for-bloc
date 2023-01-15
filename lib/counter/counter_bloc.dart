import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterBlocState> {
  CounterBloc() : super(const CounterInitial()) {
    on<CounterIncrement>((event, emit) {
      emit(IncrementState(counter: state.counter + 1));
    });
    on<CounterDecrement>((event, emit) {
      emit(DecrementState(state.counter - 1));
    });
  }
}
