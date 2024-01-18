import 'package:flutter_bloc/flutter_bloc.dart';

abstract class LoadingEvent {}

class LoadingInit extends LoadingEvent {}

class LoadingFinish extends LoadingEvent {}

class LoadingHomeBloc extends Bloc<LoadingEvent, bool> {
  LoadingHomeBloc() : super(true) {
    on<LoadingInit>((event, emit) => emit(true));
    on<LoadingFinish>((event, emit) => emit(false));
  }
}
