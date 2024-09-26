import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatefulWidget {
  @override
  _TermsAndConditionsPageState createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
        // backgroundColor: Colors.blueGrey,
        // foregroundColor: Colors.white,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Text(
                'Please read these terms and conditions carefully before using our app.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              Text(
                '1. Introduction',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey[800]),
              ),
              SizedBox(height: 8),
              Text(
                'Our app is provided on an "as is" and "as available" basis. We make no warranties, express or implied, regarding the app or its contents.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              Text(
                '2. Use of the App',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey[800]),
              ),
              SizedBox(height: 8),
              Text(
                'You agree to use the app only for lawful purposes and in compliance with all applicable laws and regulations.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              Text(
                '3. Intellectual Property',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey[800]),
              ),
              SizedBox(height: 8),
              Text(
                'All intellectual property rights in and to the app, including but not limited to trademarks, copyrights, and trade secrets, are owned by us or our licensors.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              Text(
                '4. Disclaimer of Warranties',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey[800]),
              ),
              SizedBox(height: 8),
              Text(
                'We disclaim all warranties, express or implied, regarding the app or its contents, including but not limited to implied warranties of merchantability, fitness for a particular purpose, and non-infringement.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              Text(
                '5. Limitation of Liability',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey[800]),
              ),
              SizedBox(height: 8),
              Text(
                'In no event shall we be liable for any damages, including but not limited to incidental, consequential, or punitive damages, arising out of the use of the app or its contents.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              Text(
                '6. Governing Law',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey[800]),
              ),
              SizedBox(height: 8),
              Text(
                'These terms and conditions shall be governed by and construed in accordance with the laws of [State/Country].',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              Text(
                '7. Changes to Terms and Conditions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey[800]),
              ),
              SizedBox(height: 8),
              Text(
                'We reserve the right to modify or update these terms and conditions at any time without notice.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              Text(
                '8. Contact Us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey[800]),
              ),
              SizedBox(height: 8),
              Text(
                'If you have any questions or concerns about these terms and conditions, please contact us at [support email].',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}