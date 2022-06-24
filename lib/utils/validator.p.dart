class Validator {
  Validator._();

  // ref: https://regexr.com/3bfsi
  static final _pwdRegex = RegExp(r'(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}$');

  // ref: https://regexr.com/3bcrb
  static final _emailRegex =
      RegExp(r'^([A-Z|a-z|0-9](\.|_){0,1})+[A-Z|a-z|0-9]\@([A-Z|a-z|0-9])+((\.){0,1}[A-Z|a-z|0-9]){2}\.[A-za-z]{2,3}$');

  // ref: https://regexr.com/5it2j
  static final hasNumberRegex = RegExp(r'([0-9])');

  // ref: https://regexr.com/5it2p
  static final hasAlphabetUppercaseRegex = RegExp(r'([A-Z])');

  // ref: https://regexr.com/5it2s
  static final hasAlphabetLowercaseRegex = RegExp(r'([a-z])');

  // ref: https://regexr.com/5it2v
  static final hasPunctuationsRegex = RegExp(r'/([*!@#$%^&*()?><{}";:\-|+=`~,.\\])');

  // ref: https://regexr.com/5it35
  static final _digitOnlyRegex = RegExp(r'(^[0-9]*$)');

  // ref: https://regexr.com/5it3e
  static final notContainsDigitRegex = RegExp(r'[^0-9]');

  static bool validPwd(String pwd) {
    return _pwdRegex.hasMatch(pwd);
  }

  static bool validEmail(String email) {
    return _emailRegex.hasMatch(email);
  }

  static bool digitOnly(String str) {
    return _digitOnlyRegex.hasMatch(str);
  }
}
