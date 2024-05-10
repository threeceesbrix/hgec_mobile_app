class FormValidators {
  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Password should not be empty";
    } else {
      return null;
    }
  }

  static String? userNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username is reqruired';
    }
    return null;
  }

  static String? meetingTitleValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Title is reqruired';
    }
    return null;
  }
}
