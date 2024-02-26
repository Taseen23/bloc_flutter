part of 'counter_bloc.dart';

@immutable
sealed class CounterState {
  int count;
  CounterState(this.count);
}

final class CounterInitial extends CounterState {
  CounterInitial(super.count);
}

class NumberIncremented extends CounterState {
  NumberIncremented(super.count);
}
