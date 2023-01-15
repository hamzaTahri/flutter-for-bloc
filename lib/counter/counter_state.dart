// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'counter_bloc.dart';

@immutable
class CounterBlocState {
  final int counter;
  const CounterBlocState({
    required this.counter,
  });
}

class CounterInitial extends CounterBlocState {
  const CounterInitial() : super(counter: 0);
}

class IncrementState extends CounterBlocState {
  const IncrementState({required super.counter});
}

class DecrementState extends CounterBlocState {
  const DecrementState(int increment) : super(counter: increment);
}
