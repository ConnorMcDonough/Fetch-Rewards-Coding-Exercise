import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'webbloc_event.dart';
part 'webbloc_state.dart';

class WebblocBloc extends Bloc<WebblocEvent, WebblocState> {
  WebblocBloc() : super(WebblocInitial());

  @override
  Stream<WebblocState> mapEventToState(
    WebblocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
