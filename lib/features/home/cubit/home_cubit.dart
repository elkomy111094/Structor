import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void fetchHomeData() {
    emit(HomeLoading());
    // Simulate fetching data
    Future.delayed(Duration(seconds: 2), () {
      emit(HomeLoaded(["Item 1", "Item 2", "Item 3"]));
    });
  }
}
