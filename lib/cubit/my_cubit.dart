import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  MyCubit() : super(MyInitial());
   String input = "0";
  String output = "";

  void onButtonPressed(String value) {
    emit(onButtonPressedState());
  }
}
