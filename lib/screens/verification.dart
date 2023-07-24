import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerificationScreen extends StatefulWidget {
  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String? _code;
  bool _onEditing = true;

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VerificationCode(
              onCompleted: (String value) {
                setState(() {
                  _code = value;
                });
              },
              onEditing: (bool value) {
                setState(() {
                  _onEditing = value;
                });
                if (!_onEditing) FocusScope.of(context).unfocus();
              },
            ),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => VerificationScreen()));}, child: Text('Enter'))

          ],
        ),
      ),
    );
  }
}
