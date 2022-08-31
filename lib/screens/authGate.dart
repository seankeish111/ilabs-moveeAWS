import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intelbis_removalist_platform/main.dart';
import 'package:intelbis_removalist_platform/screens/enquiryForm.dart';

import '../amplifyconfiguration.dart';



class authGate extends StatefulWidget {
  const authGate({Key? key}) : super(key: key);

  @override
  State<authGate> createState() => _authGate();
}

class _authGate extends State<authGate> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    try {
      final auth = AmplifyAuthCognito();
      await Amplify.addPlugin(auth);

      // call Amplify.configure to use the initialized categories in your app
      await Amplify.configure(amplifyconfig);
    } on Exception catch (e) {
      print('An error occurred configuring Amplify: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodosPage(),
    );
  }
}







