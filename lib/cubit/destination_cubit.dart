import 'package:airplane/model/destination_model.dart';
import 'package:airplane/services/destination_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  Future<void> fetchDestinations() async {
    try {
      emit(DestinationLoading());

      List<DestinationModel> destinations = await DetinationService().fetchDestinations();

      emit(DestinationSuccess(destinations: destinations));
    } catch (e) {
      emit(DestinationFailed(error: e.toString()));
    }
  }
}
