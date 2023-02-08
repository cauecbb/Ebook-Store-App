import 'package:flutter/material.dart';
import 'package:library_app/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF9ADCB9),
        padding: const EdgeInsets.only(
          top: 78,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              "Login",
                              style: TextStyle(
                                color: Color(0xFF332E1D),
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "Acesse sua conta com email e senha",
                              style: TextStyle(
                                color: Color(0xFF332E1D),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 325,
                          height: 56,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFEFFEE),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: TextFormField(
                            autofocus: true,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: "E-mail",
                              labelStyle: TextStyle(
                                color: Color(0xB3332E1D),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "E-mail Inválido";
                              }
                              return null;
                            },
                            onSaved: (input) => _email = input!,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 325,
                      height: 56,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFEFFEE),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            color: Color(0xB3332E1D),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Senha Inválida";
                          }
                          return null;
                        },
                        onSaved: (input) => _password = input!,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 236,
                      decoration: const BoxDecoration(
                        color: Color(0xFF5AC7AA),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            _formkey.currentState!.save();

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Bem vindo(a), $_email!")),
                            );
                          }
                        },
                        child: const Text(
                          "Entrar",
                          style: TextStyle(
                            color: Color(0xFF332E1D),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  "Foi enviado um email para redefinir sua senha."),
                            ),
                          );
                        },
                        child: const Text(
                          "Esqueceu a senha?",
                          style: TextStyle(
                            color: Color(0xFF332E1D),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: const Text(
                "OU",
                style: TextStyle(
                  color: Color(0xFFFEFFEE),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 84,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      width: 2.0,
                      color: Colors.blue,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: SizedBox(
                      height: 24,
                      width: 30,
                      child: Image.asset(
                        "assets/facebook.png",
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 36),
                Container(
                  width: 84,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: SizedBox(
                      height: 24,
                      width: 30,
                      child: Image.asset(
                        "assets/google.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupPage(),
                  ),
                );
              },
              child: const Text("Cadastre-se"),
            ),
          ],
        ),
      ),
    );
  }
}
