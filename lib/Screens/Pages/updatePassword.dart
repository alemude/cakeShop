import 'package:flutter/material.dart';

class UpdatePassword extends StatefulWidget {
  const UpdatePassword({super.key});

  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  final _formKey = GlobalKey<FormState>();
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _vissible = true;
  bool _vissible1 = true;
  bool _vissible2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: const IconThemeData(color: Colors.blue),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: TextFormField(
                  obscureText: _vissible,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your old password';
                    }
                    return null;
                  },
                  controller: _oldPasswordController,
                  decoration: InputDecoration(
                    hintText: 'Old Password',
                    contentPadding: const EdgeInsets.all(16),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _vissible = !_vissible;
                        });
                      },
                      icon: Icon(
                        _vissible ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: TextFormField(
                  controller: _newPasswordController,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _vissible1 = !_vissible1;
                          });
                        },
                        icon: Icon(
                          _vissible1 ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(16),
                      labelText: 'New Password'),
                  obscureText: _vissible1,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your new password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: TextFormField(
                  controller: _confirmPasswordController,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _vissible2 = !_vissible2;
                          });
                        },
                        icon: Icon(
                          _vissible2 ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(16),
                      labelText: 'Confirm Password'),
                  obscureText: _vissible2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please confirm your new password';
                    }
                    if (value != _newPasswordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 30.0),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showAlertDialog(context);
                      }
                    },
                    child: const Text(
                      'Update',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'nunito',
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    Widget okButton = ElevatedButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text(
        "Good",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      content: const Text(
        "You have updateded your password successfuly.",
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
