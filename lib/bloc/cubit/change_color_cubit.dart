import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeColorCubit extends Cubit<bool> {
  ChangeColorCubit() : super(true);

  void changeColor() => emit(!state);
}
