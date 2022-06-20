import 'package:flutter/material.dart';
import 'package:nmf_social/widgets/input/input.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LOGIN")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const SizedBox(
            height: 100,
          ),
          Input(),
          const SizedBox(
            height: 100,
          ),
          Input(),
        ]),
      ),
    );
  }
}
