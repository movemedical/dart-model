import 'package:intl/intl.dart';

class StateLocalizations {
  StateLocalizations(this.locale);

  String locale;

  static Future<StateLocalizations> load(String locale) {
    return Future.value(StateLocalizations(locale));
  }

  String get title =>
      Intl.message('Move Medical', name: 'title', locale: locale);

  String get usernameEmail =>
      Intl.message('Username / Email', name: 'usernameEmail', locale: locale);

  String get usernameEmailHint => Intl.message('john.doe@movemedical.com',
      name: 'usernameEmailHint', locale: locale);

  String get username =>
      Intl.message('Username', name: 'username', locale: locale);

  String get password =>
      Intl.message('Password', name: 'password', locale: locale);

  String get passwordHint =>
      Intl.message('', name: 'passwordHint', locale: locale);

  String get login => Intl.message('Login', name: 'login', locale: locale);

  String get signIn => Intl.message('Sign In', name: 'signIn', locale: locale);

  String get signUp => Intl.message('Sign Up', name: 'signUp', locale: locale);

  String get copyright =>
      Intl.message('©2019 Move Medical', name: 'copyright', locale: locale);

  String get dontHaveAccountQuestion => Intl.message('Don\'t have an account?',
      name: 'dontHaveAccountQuestion', locale: locale);
}
