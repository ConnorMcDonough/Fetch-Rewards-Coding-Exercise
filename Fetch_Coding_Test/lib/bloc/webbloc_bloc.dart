import 'dart:async';

import 'package:Fetch_Coding_Test/model/data_model.dart';
import 'package:Fetch_Coding_Test/repositories/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

part 'webbloc_event.dart';
part 'webbloc_state.dart';

class WebblocBloc extends Bloc<WebblocEvent, WebblocState> {
  final Repository _repository;
  WebblocBloc(this._repository) : super(Initial());

  @override
  Stream<WebblocState> mapEventToState(
    WebblocEvent event,
  ) async* {
    if (event is FetchData) {
      try {
        yield Loading();
        List<Data> data = await _repository.fetchSortedList();
        yield Loaded(data);
      } on Error {
        yield Error("Error: couldnt fetch list. Is deivce online?");
      }
    }
  }
}
