import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Modular.to
                    .pushNamed('/home', arguments: 'Pessoa enviado pela data');
              },
              child: const Text('Pelo Data'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/home/?query=Pessoa&order=id');
              },
              child: const Text('Pelo Query String'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/home/123/batata?query=Rodrigo');
              },
              child: const Text('Pelo Parametro como Path'),
            ),
          ],
        ),
      ),
    );
  }
}
