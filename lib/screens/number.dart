import 'package:chat_project_tolue/screens/verification.dart';
import 'package:flutter/material.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

  void _enterNumber() {}

  @override
  Widget build(context) {
    final numberController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              'Please enter your number',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              style: TextStyle(fontSize: 20),
              controller: numberController,
              maxLength: 9,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    )),
                prefixIcon: Icon(Icons.phone),
                prefixText: '09',
                //hintText: '09*********',
                label: Text('Number'),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
            // Button to enter the number
            ElevatedButton(
              onPressed: () {
                if (numberController.text.length == 9) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => VerificationScreen()));
                } else {
                  showDialog(
                    context: context,
                    builder: (ctx) {
                      return AlertDialog(
                        content: const Text('Please enter complete number'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(ctx);
                              },
                              child: const Text('Okay'))
                        ],
                      );
                    },
                  );
                }
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              child: const Text('Enter'),
            ),
          ],
        ),
      ),
    );
  }
}
