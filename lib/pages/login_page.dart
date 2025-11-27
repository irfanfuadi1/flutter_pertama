import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pertama/pages/item_page.dart';

import '../bloc/auth/auth_bloc.dart';
import '../bloc/cubit/visibility_cubit.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameC = TextEditingController();
    TextEditingController passwordC = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text(
              'Login Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: usernameC,
              decoration: InputDecoration(
                hintText: 'username',
                border: const OutlineInputBorder(),
                suffixIcon: const Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20),
            BlocBuilder<VisibilityCubit, bool>(
              builder: (ctxVisibility, visibilityVal) {
                return TextFormField(
                  controller: passwordC,
                  obscureText: visibilityVal,
                  decoration: InputDecoration(
                    hintText: 'password',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        ctxVisibility
                            .read<VisibilityCubit>()
                            .visibiliti();
                      },
                      icon: Icon(
                        visibilityVal
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthStateLoaded) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const ItemPage()),
                  );
                }

                if (state is AuthStateError) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(state.message)));
                }
              },
              builder: (context, state) {
                return FloatingActionButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(
                      AuthEventLogin(
                        username: usernameC.text,
                        password: passwordC.text,
                      ),
                    );
                  },
                  child: Text(
                    state is AuthStateLoading
                        ? 'Loading...'
                        : 'Login',
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
