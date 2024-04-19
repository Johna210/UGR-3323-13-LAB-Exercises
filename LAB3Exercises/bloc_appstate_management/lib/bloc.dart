import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_appstate_management/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>(
      (event, emit) => emit(state + 1),
    );

    on<CounterDecrementPressed>(
      (event, emit) => emit(state - 1),
    );
  }
}
