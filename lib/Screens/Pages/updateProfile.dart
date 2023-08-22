import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfile extends StatefulWidget {
  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  File? _image;


  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (_image != null)
                    Image.file(
                      _image!,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  const SizedBox(height: 16.0),
                  Container(
                    height:60,
                    width:double.infinity,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.camera_alt),
                                  title: const Text('Take a photo',
                                      style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    _pickImage(ImageSource.camera);
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.photo_library),
                                  title: const Text('Choose from gallery',
                                                      style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    _pickImage(ImageSource.gallery);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                    child: Row(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.image),
                        const Text('Upload your photo',
                            style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 16, 4, 83),
                        ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name',
                  prefixIcon: Icon(Icons.person),
                  contentPadding: EdgeInsets.all(16),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    if(!RegExp(r'^[a-zA-Z]+$').hasMatch(value)){
                      return 'Please enter a valid name';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    contentPadding: EdgeInsets.all(16),
                    labelText: 'Email'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                                      if(!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)){
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    contentPadding: EdgeInsets.all(16),
                    labelText: 'Phone Number'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    if(!RegExp(r'^\+?[0-9]{10,13}$').hasMatch(value)){
                      return 'Please enter a valid name';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width:double.infinity,
                height: 50,
                child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 16, 4, 83),
                      ),
                  onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showAlertDialog(context);
                        }
                  },
                  child: const Text(
                    'Update',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
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
        "You have updatede your profile successfuly.",
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


