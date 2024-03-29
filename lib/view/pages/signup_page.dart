import 'package:flutter/material.dart';
import 'package:library_app/resources/components/round_button.dart';
import 'package:library_app/shared/utils/routes/routes_name.dart';
import 'package:library_app/shared/utils/utils.dart';
import 'package:library_app/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);

  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _emailcontroller.dispose();
    _passwordcontroller.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();

    _obscurePassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AuthViewModel authViewModel = Provider.of<AuthViewModel>(context);
    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailcontroller,
              keyboardType: TextInputType.emailAddress,
              focusNode: emailFocusNode,
              decoration: const InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.alternate_email),
              ),
              onFieldSubmitted: (value) {
                Utils.fieldFocusChange(
                    context, emailFocusNode, passwordFocusNode);
              },
            ),
            ValueListenableBuilder(
              builder: (BuildContext context, value, child) {
                return TextFormField(
                  controller: _passwordcontroller,
                  obscureText: _obscurePassword.value,
                  focusNode: passwordFocusNode,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        _obscurePassword.value = !_obscurePassword.value;
                      },
                      child: Icon(
                        _obscurePassword.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility,
                      ),
                    ),
                  ),
                );
              },
              valueListenable: _obscurePassword,
            ),
            SizedBox(
              height: height * .08,
            ),
            RoundButton(
              title: "Sign Up",
              loading: authViewModel.loading,
              onPress: () {
                if (_emailcontroller.text.isEmpty) {
                  Utils.flushBarErrorMessage("Please enter Email", context);
                } else if (_passwordcontroller.text.isEmpty) {
                  Utils.flushBarErrorMessage("Please enter Password", context);
                } else if (_passwordcontroller.text.length < 6) {
                  Utils.flushBarErrorMessage(
                      "Please enter 8 digit Password", context);
                } else {
                  Map data = {
                    'email': _emailcontroller.text.toString(),
                    'password': _passwordcontroller.text.toString(),
                  };
                  authViewModel.signUpApi(data, context);
                  print("api hit");
                }
              },
            ),
            SizedBox(
              height: height * .02,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.login);
                },
                child: const Text("Already have an account? Login")),
          ],
        ),
      ),
    );
  }
}
