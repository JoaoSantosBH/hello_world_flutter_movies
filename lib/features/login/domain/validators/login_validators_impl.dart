import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../core/i18n/i18n.dart';
import '../../presentation/validators/login_validators_interface.dart';


class LoginValidatorsImpl implements LoginValidatorsInterface {

  @override
  String? Function(String? p1)? usernameValidator() {
    return FormBuilderValidators.compose(
      [
        FormBuilderValidators.required(
          errorText: I18n.strings.validatorRequiredUsername,
        ),
        FormBuilderValidators.minLength(
          3,
          errorText: I18n.strings.validatorMinLengthUsername,
        ),
      ],
    );
  }

  @override
  String? Function(String? p1)? passwordValidator() {
    return FormBuilderValidators.compose(
      [
        FormBuilderValidators.required(
          errorText: I18n.strings.validatorRequiredPassword,
        ),
        FormBuilderValidators.minLength(
          3,
          errorText: I18n.strings.validatorMinLengthPassword,
        ),
      ],
    );
  }


}


