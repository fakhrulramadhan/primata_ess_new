import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primata_ess_new/bloc/login/login_bloc.dart';
import 'package:primata_ess_new/common/custom_button.dart';
import 'package:primata_ess_new/common/custom_textfield.dart';
import 'package:primata_ess_new/data/model/Login_Request/login_request_model.dart';
import 'package:primata_ess_new/data/services/login_local_service.dart';
import 'package:primata_ess_new/presentation/home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _loginFormKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  //fungsi ketika page pertama kali diuka
  @override
  void initState() {
    // TODO: implement initState
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: const Text("Dashboard"),
      // actions: const [],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/PrimataEss.png",
                      width: 120.0,
                      height: 120.0,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.teal[300],
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: _loginFormKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: emailController,
                        hintText: "Email",
                        icon: const Icon(
                          Icons.person,
                          size: 40.0,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      CustomTextField(
                        controller: passwordController,
                        obsscureText: !_passwordVisible,
                        hintText: "Password",
                        icon: const Icon(
                          Icons.lock,
                          size: 24.0,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                            size: 25,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      BlocConsumer<LoginBloc, LoginState>(
                        //listener (utk kasih tahu hasi response)
                        listener: (context, state) async {
                          // TODO: implement listener
                          if (state is LoginLoaded) {
                            await LoginLocalService().saveAuthData(state.model);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          }

                          if (state is LoginError) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Email dan password tidak sesuai"),
                            ));
                          }
                        },
                        builder: (context, state) {
                          if (state is LoginLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return CustomButton(
                            text: "Login",
                            onTap: () {
                              if (_loginFormKey.currentState!.validate()) {
                                final model = LoginRequestModel(
                                    email: emailController.text,
                                    password: passwordController.text);

                                context
                                    .read<LoginBloc>()
                                    .add(DoLoginEvent(model: model));
                              }
                            },
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
