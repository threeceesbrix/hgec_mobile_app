// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/ui/common/validators.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String TitleValueKey = 'Title';
const String LocationValueKey = 'Location';

final Map<String, TextEditingController>
    _MeetingsAddViewTextEditingControllers = {};

final Map<String, FocusNode> _MeetingsAddViewFocusNodes = {};

final Map<String, String? Function(String?)?> _MeetingsAddViewTextValidations =
    {
  TitleValueKey: FormValidators.meetingTitleValidator,
  LocationValueKey: null,
};

mixin $MeetingsAddView {
  TextEditingController get titleController =>
      _getFormTextEditingController(TitleValueKey);
  TextEditingController get locationController =>
      _getFormTextEditingController(LocationValueKey);

  FocusNode get titleFocusNode => _getFormFocusNode(TitleValueKey);
  FocusNode get locationFocusNode => _getFormFocusNode(LocationValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_MeetingsAddViewTextEditingControllers.containsKey(key)) {
      return _MeetingsAddViewTextEditingControllers[key]!;
    }

    _MeetingsAddViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _MeetingsAddViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_MeetingsAddViewFocusNodes.containsKey(key)) {
      return _MeetingsAddViewFocusNodes[key]!;
    }
    _MeetingsAddViewFocusNodes[key] = FocusNode();
    return _MeetingsAddViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    titleController.addListener(() => _updateFormData(model));
    locationController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    titleController.addListener(() => _updateFormData(model));
    locationController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          TitleValueKey: titleController.text,
          LocationValueKey: locationController.text,
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

    for (var controller in _MeetingsAddViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _MeetingsAddViewFocusNodes.values) {
      focusNode.dispose();
    }

    _MeetingsAddViewTextEditingControllers.clear();
    _MeetingsAddViewFocusNodes.clear();
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

  String? get titleValue => this.formValueMap[TitleValueKey] as String?;
  String? get locationValue => this.formValueMap[LocationValueKey] as String?;

  set titleValue(String? value) {
    this.setData(
      this.formValueMap..addAll({TitleValueKey: value}),
    );

    if (_MeetingsAddViewTextEditingControllers.containsKey(TitleValueKey)) {
      _MeetingsAddViewTextEditingControllers[TitleValueKey]?.text = value ?? '';
    }
  }

  set locationValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LocationValueKey: value}),
    );

    if (_MeetingsAddViewTextEditingControllers.containsKey(LocationValueKey)) {
      _MeetingsAddViewTextEditingControllers[LocationValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasTitle =>
      this.formValueMap.containsKey(TitleValueKey) &&
      (titleValue?.isNotEmpty ?? false);
  bool get hasLocation =>
      this.formValueMap.containsKey(LocationValueKey) &&
      (locationValue?.isNotEmpty ?? false);

  bool get hasTitleValidationMessage =>
      this.fieldsValidationMessages[TitleValueKey]?.isNotEmpty ?? false;
  bool get hasLocationValidationMessage =>
      this.fieldsValidationMessages[LocationValueKey]?.isNotEmpty ?? false;

  String? get titleValidationMessage =>
      this.fieldsValidationMessages[TitleValueKey];
  String? get locationValidationMessage =>
      this.fieldsValidationMessages[LocationValueKey];
}

extension Methods on FormStateHelper {
  setTitleValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TitleValueKey] = validationMessage;
  setLocationValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LocationValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    titleValue = '';
    locationValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      TitleValueKey: getValidationMessage(TitleValueKey),
      LocationValueKey: getValidationMessage(LocationValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _MeetingsAddViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _MeetingsAddViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      TitleValueKey: getValidationMessage(TitleValueKey),
      LocationValueKey: getValidationMessage(LocationValueKey),
    });
