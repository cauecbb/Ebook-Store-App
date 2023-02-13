import 'package:flutter/material.dart';
import 'package:library_app/pages/home_page.dart';
import 'package:library_app/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  late String _email;
  // ignore: unused_field
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF9ADCB9),
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
                top: 40,
              ),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const HomePage(),
                            //   ),
                            // );
                          },
                          child: SizedBox(
                            child: Image.asset(
                              "assets/img/botao-voltar.png",
                              height: 24,
                              width: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: Column(
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
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        width: 300,
                        height: 52,
                        padding: const EdgeInsets.only(
                          left: 3,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xFFFEFFEE),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: TextFormField(
                          autofocus: false,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.mail),
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
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        width: 300,
                        height: 52,
                        padding: const EdgeInsets.only(
                          left: 16,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xFFFEFFEE),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: TextFormField(
                          autofocus: false,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.lock),
                            border: InputBorder.none,
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
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 215,
              height: 43,
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
                        "assets/img/facebook.png",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 36,
                ),
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
                        "assets/img/google.png",
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
