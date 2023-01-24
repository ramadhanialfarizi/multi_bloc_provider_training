import 'package:bloc/bloc.dart';

// STATE BLOC UNTUK MENGUBAH TEMA
class ThemeChange extends Cubit<bool> {
  ThemeChange() : super(true);

  /*
    TRUE => LIGHT
    FALSE => DARK
  */

  void changeTheme() {
    emit(!state);
  }
}
