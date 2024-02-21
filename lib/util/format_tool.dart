class FormatTool {
  static final RegExp emailRegex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.([a-zA-Z]{2,})+",);
  //确保字符串由字母、数字、指定的特殊字符组成，并且总长度至少为8个字符。
  static final RegExp pwdRegex = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[.@$#!%*?&_])[A-Za-z\d@#$!%*?&_].{7,}$',);
  static bool isEmailValid(String email) {
    return emailRegex.hasMatch(email);
  }
  static bool isPwdValid(String password) {
    return pwdRegex.hasMatch(password);
  }
}