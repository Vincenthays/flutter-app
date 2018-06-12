import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn _googleSignIn = new GoogleSignIn();

class Test extends StatelessWidget {

  void _onPressedHandler() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    
    print('signInWithGoogle succeeded: $googleAuth');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.verified_user),
        onPressed: () => _onPressedHandler(),
      ),
    );
  }
}