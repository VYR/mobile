import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  final _formKey = GlobalKey<FormState>(); 
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'We would love to hear from you',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color.fromRGBO(62, 0, 117, 1) ),
                ),
                const SizedBox(height: 7),
                const Text(
                  'Write to us or call us with your feedback or your queries',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(Icons.phone, color: Color.fromRGBO(62, 0, 117, 1)),
                    SizedBox(width: 8),
                    Text(
                      'Call Us',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 30),
                  child: Text('+91 83743 XXXXX'),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(Icons.email, color: Color.fromRGBO(62, 0, 117, 1)),
                    SizedBox(width: 8),
                    Text(
                      'Email Us',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 30),
                  child: Text('info at viindhyajewels.com'),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(Icons.link, color: Color.fromRGBO(62, 0, 117, 1)),
                    SizedBox(width: 8),
                    Text(
                      'Connect with Us',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 30),
                  child: Row(
                    children: [
                      Icon(Icons.facebook, color: Color.fromRGBO(62, 0, 117, 1)),
                      SizedBox(width: 8),
                      Icon(Icons.alternate_email, color: Color.fromRGBO(62, 0, 117, 1)),
                      SizedBox(width: 8),
                      Icon(Icons.camera_alt, color: Color.fromRGBO(62, 0, 117, 1)),
                      SizedBox(width: 8),
                      Icon(Icons.play_circle_filled, color: Color.fromRGBO(62, 0, 117, 1)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(Icons.location_on, color: Color.fromRGBO(62, 0, 117, 1)),
                    SizedBox(width: 8),
                    Text(
                      'Mailing Address',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 30),
                  child: Text('# 8-3-191/92/SF (71/A), 2nd Floor, Surya Plaza, Vengal Rao Nagar, Hyderabad, Telangana - 500038.'),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(Icons.location_city, color: Color.fromRGBO(62, 0, 117, 1)),
                    SizedBox(width: 8),
                    Text(
                      'Registered Address',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 30),
                  child: Text('# 8-3-191/92/SF (71/A), 2nd Floor, Surya Plaza, Vengal Rao Nagar, Hyderabad, Telangana - 500038.'),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Write to Us',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color.fromRGBO(62, 0, 117, 1) ),
                ),
                const SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16), 
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Email Id';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16), 
                      TextFormField(
                        controller: _mobileController,
                        keyboardType: TextInputType.number, 
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          labelText: 'Mobile Number',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your mobile number';
                          }
                          if (value.length != 10) {
                            return 'Mobile number must be 10 digits';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _messageController,
                        maxLines: 2,
                        decoration: const InputDecoration(
                                labelText: 'Write Message',
                                border: OutlineInputBorder(),
                              ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please write some message';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Thank You for Connecting with us, We will get back to you Soon.')),
                            );
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
