import 'package:modux/modux.dart';

abstract class MoveFormField<T> {
  ActionDispatcher<T> get action;

  T get value;
  set value(T value);

  String get hint => '';
  set hint(String value) {}

  bool get hasFocus;
  set focus(bool value);

  bool validate();
}
