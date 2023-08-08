import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter_movies/features/login/presentation/validators/login_validators_interface.dart';
import 'package:hello_world_flutter_movies/features/login/presentation/viewmodel/login_view_model.dart';
import 'package:hello_world_flutter_movies/features/login/presentation/widgets/button_widget.dart';
import 'package:hello_world_flutter_movies/features/login/presentation/widgets/login_alert_widget.dart';
import 'package:hello_world_flutter_movies/features/login/presentation/widgets/page_layout_components.dart';
import '../../../core/constants/keys.dart';
import '../../../core/foundation/form/base_form.dart';
import '../../../core/foundation/injector/get.dart';
import '../../../core/foundation/states/view_state_builder_dialog.dart';
import '../../../core/i18n/i18n.dart';
import '../domain/entities/login_request.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with BaseForm {
  final LoginViewModel viewModel = get();
  final LoginValidatorsInterface _formValidators = get();

  final TextEditingController _loginNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TopSpaceWidget(),
              LogoWidget(),
              const SizedBox(
                height: 80,
              ),
              nameFormField(keyTextFormFieldUsername, _loginNameController,_formValidators),
              const SizedBox(
                height: 48,
              ),
              passFormField(keyTextFormFieldPassword, _passwordController, _formValidators),
              const SizedBox(
                height: 32,
              ),
              ViewStateBuilderDialog(
                state: viewModel.loginViewState,
                builder: (context, state) {
                  final value = state.value;
                  if (value != null) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      showDialog(
                        context: context,
                        builder: (context) => LoginAlertWidget(
                          key: const Key(keyLoginAlert),
                          userInfo: value,
                        ),
                      );
                    });

                    viewModel.cleanViewState();
                  }

                  final isLoading = state.loading;
                  return ButtonWidget(
                    key: const Key(keyButtonLogin),
                    text: I18n.strings.textButtonLogin,
                    onPressed: _onClickLogin,
                    showProgress: isLoading,
                  );
                },
                onError: (failure) {
                  if (failure != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        key: const Key(keyScaffolMessage),
                        content: Text(
                          failure.message,
                        ),
                      ),
                    );
                  }
                },
              )

            ],
          ),
        ),
      ),
    );
  }



  Future<void> _onClickLogin() async {
    final request = LoginRequest(
      username: _loginNameController.text,
      password: _passwordController.text,
    );
    final isFormValid = formUpdate();
    if (isFormValid) {
      await viewModel.doLogin(request);
    }
  }

}
