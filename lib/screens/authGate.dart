import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intelbis_removalist_platform/screens/enquiryForm.dart';
import '../amplifyconfiguration.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';




class authGate extends StatefulWidget {
  const authGate({Key? key}) : super(key: key);

  @override
  State<authGate> createState() => _authGateState();
}

class _authGateState extends State<authGate> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    try {
      final auth = AmplifyAuthCognito();
      await Amplify.addPlugin(AmplifyAuthCognito());
      await Amplify.configure(amplifyconfig);
      await Amplify.addPlugin(auth);
      print('Successfully configured');
    } on Exception catch (e) {
      print('Error configuring Amplify:$e');

    }
  }

  @override
  Widget build(BuildContext context) {
    return  Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: const TodosPage(),
      )

    );
  }
}







