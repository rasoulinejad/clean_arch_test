class Validator {
  bool validateEmail(String email) {
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    return email.length >= 5 && emailValid;
  }

  bool validateMobile(String phone) {
    bool phoneValid = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(phone);
    return phone.length >= 10 && phoneValid;
  }

  bool validateAccount(String account) {
    return account.length >= 8 && double.tryParse(account) != null;
  }
}
