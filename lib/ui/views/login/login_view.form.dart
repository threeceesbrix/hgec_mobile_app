// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/ui/common/validators.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String UserNameValueKey = 'userName';
const String PasswordValueKey = 'password';

final Map<String, TextEditingController> _LoginViewTextEditingControllers = {};

final Map<String, FocusNode> _LoginViewFocusNodes = {};

final Map<String, String? Function(String?)?> _LoginViewTextValidations = {
  UserNameValueKey: FormValidators.userNameValidator,
  PasswordValueKey: FormValidators.passwordValidator,
};

mixin $LoginView {
  TextEditingController get userNameController =>
      _getFormTextEditingController(UserNameValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);

  FocusNode get userNameFocusNode => _getFormFocusNode(UserNameValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_LoginViewTextEditingControllers.containsKey(key)) {
      return _LoginViewTextEditingControllers[key]!;
    }

    _LoginViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _LoginViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_LoginViewFocusNodes.containsKey(key)) {
      return _LoginViewFocusNodes[key]!;
    }
    _LoginViewFocusNodes[key] = FocusNode();
    return _LoginViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    userNameController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    userNameController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          UserNameValueKey: userNameController.text,
          PasswordValueKey: passwordController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _LoginViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _LoginViewFocusNodes.values) {
      focusNode.dispose();
    }

    _LoginViewTextEditingControllers.clear();
    _LoginViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get userNameValue => this.formValueMap[UserNameValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;

  set userNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({UserNameValueKey: value}),
    );

    if (_LoginViewTextEditingControllers.containsKey(UserNameValueKey)) {
      _LoginViewTextEditingControllers[UserNameValueKey]?.text = value ?? '';
    }
  }

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PasswordValueKey: value}),
    );

    if (_LoginViewTextEditingControllers.containsKey(PasswordValueKey)) {
      _LoginViewTextEditingControllers[PasswordValueKey]?.text = value ?? '';
    }
  }

  bool get hasUserName =>
      this.formValueMap.containsKey(UserNameValueKey) &&
      (userNameValue?.isNotEmpty ?? false);
  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);

  bool get hasUserNameValidationMessage =>
      this.fieldsValidationMessages[UserNameValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;

  String? get userNameValidationMessage =>
      this.fieldsValidationMessages[UserNameValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
}

extension Methods on FormStateHelper {
  setUserNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[UserNameValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    userNameValue = '';
    passwordValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      UserNameValueKey: getValidationMessage(UserNameValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _LoginViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _LoginViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      UserNameValueKey: getValidationMessage(UserNameValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
    });
