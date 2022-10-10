String? Function(String?)? emailValidator = (String? value) {
  if (value == null || value.isEmpty) {
    return 'Please Enter Email';
  } else if (!value.contains('@')) {
    return 'Please Enter Valid Email';
  }
  return null;
};

String? Function(String?)? passwordValidator = (String? value) {
  if (value == null || value.isEmpty) {
    return 'Please Enter Password';
  }
  return null;
};

String? Function(String?)? nameValidator = (String? value) {
  if (value == null || value.isEmpty) {
    return 'Please Enter Name';
  }
  return null;
};
