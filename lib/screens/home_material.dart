import 'package:flutter/material.dart';
import 'package:flutter_realistic_forms/app.dart';
import './../models/users.dart';

class HomeMaterial extends StatefulWidget {
  const HomeMaterial({super.key});

  @override
  State<HomeMaterial> createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Builder(
            builder: (context) => Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'First name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          // if (value!.isEmpty) {
                          return 'Please enter your first name';
                        }
                      },
                      onSaved: (val) =>
                          setState(() => _user.firstName = val as String),
                    ),
                    TextFormField(
                        decoration: InputDecoration(labelText: 'Last name'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your last name.';
                          }
                        },
                        onSaved: (val) =>
                            setState(() => _user.lastName = val as String)),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Subscribe'),
                    ),
                    SwitchListTile(
                        title: const Text('Monthly Newsletter'),
                        value: _user.newsletter,
                        onChanged: (bool val) =>
                            setState(() => _user.newsletter = val)),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Interests'),
                    ),
                    CheckboxListTile(
                        title: const Text('Cooking'),
                        value: _user.passions[User.PassionCooking],
                        onChanged: (val) {
                          setState(() => _user.passions[User.PassionCooking] =
                              val as bool);
                        }),
                    CheckboxListTile(
                        title: const Text('Traveling'),
                        value: _user.passions[User.PassionTraveling],
                        onChanged: (val) {
                          setState(() => _user.passions[User.PassionTraveling] =
                              val as bool);
                        }),
                    CheckboxListTile(
                        title: const Text('Hiking'),
                        value: _user.passions[User.PassionHiking],
                        onChanged: (val) {
                          setState(() =>
                              _user.passions[User.PassionHiking] = val as bool);
                        }),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        child: ElevatedButton(
                          child: Text('Save'),
                          onPressed: () {
                            // https://docs.flutter.dev/cookbook/forms/validation
                            final form = _formKey.currentState!;  // <= exclamation mark used to handle null 
                            if (form.validate()) {
                              form.save();
                              _user.save();
                              _showDialog(context);
                            }
                          },
                        )),
                  ],
                ))),
      ),
    );
  }

  _showDialog(BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Submitting form')));
  }
}
