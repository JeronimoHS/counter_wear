import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart'; //instalar con flutter pub add fluttertoast o colocarlo en el pubspec

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    if (state != 10) {
      emit(state + 1);
    } else {
      Fluttertoast.showToast(msg: "ha llegado al limitesuperior", fontSize: 10.5);
    }
  }

  void decrement() {
    if (state != -10) {
      emit(state - 1);
    } else {
      Fluttertoast.showToast(msg: "ha llegado al limite inferior", fontSize: 10);
    }
  }

  void restart() => emit(0); //regresar el contador a cero
}
