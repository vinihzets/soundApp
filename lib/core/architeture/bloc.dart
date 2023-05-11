import 'dart:async';

import 'package:soundapp/core/architeture/bloc_state.dart';
import 'package:soundapp/core/architeture/event.dart';

abstract class Bloc {
  late StreamController<Event> _event;
  Sink<Event> get event => _event.sink;

  late StreamController<BlocState> _state;
  Stream<BlocState> get state => _state.stream;

  Bloc() {
    _event = StreamController.broadcast();
    _state = StreamController.broadcast();
  }

  dispatchEvent(Event event) {
    _event.add(event);
  }

  dispatchState(BlocState state) {
    _state.add(state);
  }

  mapListenEvent(Event event);
}
