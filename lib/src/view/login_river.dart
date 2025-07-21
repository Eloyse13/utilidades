import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:utilizades/src/providers/login_provider.dart';

class LoginRiver extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef  ref) {

    final state = ref.watch(loginProvider);
    final controller = ref.read(loginProvider.nitifier);

    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
        TextField(
          decoration: InputDecoration(labelText: 'Senha'),
          onChanged: controller.updatePassword,
          obscureText: true,
        ),
        SizedBox(height: 20,),
        state.isLoading ? CircularProgressIndicator() :
        ElevatedButton(
          onPressed: controller.submitLogin,
           child: Text("Entar"),
          )
        ],
      ),
      );
  }
}