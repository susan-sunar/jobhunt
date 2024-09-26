import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobhunt/constant/google.dart';
import 'package:jobhunt/pages/botten%20navigation.dart';



class ProfilePage extends StatefulWidget {
  final String username;
  final String email;
  final String contact;

  ProfilePage({
    super.key,
    required this.username,
    required this.email,
    required this.contact,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _image;
  final _formKey = GlobalKey<FormState>();

  // Profile information
  String _qualification = '';
  String _address = '';
  String _skills = '';
  String _jobExperiences = '';

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _captureImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Profile Page'),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Center(
                child: CircleAvatar(
                  radius: 64,
                  backgroundImage: _image != null
                      ? FileImage(_image!)
                      : null,
                  child: _image == null
                      ? Icon(Icons.person, size: 128)
                      : null,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _captureImage,
                    child: Text('Capture Image'),
                  ),
                  ElevatedButton(
                    onPressed: _selectImage,
                    child: Text('Select Image'),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${widget.username}',style: myStyle(18),),
                  Text('Email: ${widget.email}',style: myStyle(18)),
                  Text('Contact: ${widget.contact}',style: myStyle(18)),
                ],
              ),
              SizedBox(height: 16),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Qualification',
                        border: OutlineInputBorder(),
                      ),
                      onSaved: (value) => _qualification = value ?? '',
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Address',
                        border: OutlineInputBorder(),
                      ),
                      onSaved: (value) => _address = value ?? '',
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Skills',
                        border: OutlineInputBorder(),
                      ),
                      onSaved: (value) => _skills = value ?? '',
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Job Experiences',
                        border: OutlineInputBorder(),
                      ),
                      onSaved: (value) => _jobExperiences = value ?? '',
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        _formKey.currentState!.save();
                        // Save the profile information to your database or API
                        print('Profile information saved:');
                        print('Qualification: $_qualification');
                        print('Address: $_address');
                        print('Skills: $_skills');
                        print('Job Experiences: $_jobExperiences');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BottomNavigation()),
                        );
                      },
                      child: Text('Save Profile'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
