import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: NameForm(),
        ),
      ),
    );
  }
}

class NameForm extends StatefulWidget {
  @override
  _NameFormState createState() => _NameFormState();
}

class _NameFormState extends State<NameForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: ' your First Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your first name';
              }
              if (value.length < 2) {
                return 'First name must be at least 2 characters';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'your Last Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your last name';
              }
              if (value.length < 2) {
                return 'Last name must be at least 2 characters';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: Text('enter'),
            ),
          ),
        ],
      ),
    );
  }
}
