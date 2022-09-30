import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) {
    if (isSelected(id)) {
      state.remove(id);
    } else {
      state.add(id);
    }

    emit(List.from(state));
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
