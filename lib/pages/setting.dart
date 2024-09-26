import 'package:flutter/material.dart';
import 'package:jobhunt/pages/account%20setting.dart';
import 'package:jobhunt/pages/help&suppert.dart';
import 'package:jobhunt/pages/login.dart';
import 'package:jobhunt/pages/term&condiction.dart';


class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkMode = false;
  bool _notifications = true;
  String _language = 'English';
  String _currency = 'USD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        elevation: 4,
      ),
      body: ListView(
        children: [
          // Account Settings
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account Settings'),
            subtitle: Text('Manage your account information'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountSettingsPage()),
              );
            },
          ),
          Divider(),

          // Dark Mode
          ListTile(
            leading: Icon(Icons.nightlight_round),
            title: Text('Dark Mode'),
            subtitle: Text('Enable or disable dark mode'),
            trailing: Switch(
              value: _darkMode,
              onChanged: (bool value) {
                setState(() {
                  _darkMode = value;
                });
              },
            ),
          ),
          Divider(),

          // Notifications
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            subtitle: Text('Enable or disable notifications'),
            trailing: Switch(
              value: _notifications,
              onChanged: (bool value) {
                setState(() {
                  _notifications = value;
                });
              },
            ),
          ),
          Divider(),

          // Language
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            subtitle: Text('Select your preferred language'),
            trailing: DropdownButton<String>(
              value: _language,
              onChanged: (String? value) {
                setState(() {
                  _language = value!;
                });
              },
              items: [
                DropdownMenuItem(
                  child: Text('English'),
                  value: 'English',
                ),
                DropdownMenuItem(
                  child: Text('Dzongkha'),
                  value: 'Dzongkha',
                ),
                // DropdownMenuItem(
                //   child: Text('French'),
                //   value: 'French',
                // ),
              ],
            ),
          ),
          Divider(),

          // Currency
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Currency'),
            subtitle: Text('Select your preferred currency'),
            trailing: DropdownButton<String>(
              value: _currency,
              onChanged: (String? value) {
                setState(() {
                  _currency = value!;
                });
              },
              items: [
                DropdownMenuItem(
                  child: Text('USD'),
                  value: 'USD',
                ),
                DropdownMenuItem(
                  child: Text('EUR'),
                  value: 'EUR',
                ),
                DropdownMenuItem(
                  child: Text('GBP'),
                  value: 'GBP',
                ),
              ],
            ),
          ),
          Divider(),

          // Help and Support
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help and Support'),
            subtitle: Text('Get help and support'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpAndSupportPage()),
              );
            },
          ),
          Divider(),

          // Terms and Conditions
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Terms and Conditions'),
            subtitle: Text('Read our terms and conditions'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>TermsAndConditionsPage()));
            },
          ),
          Divider(),

          // Logout
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            subtitle: Text('Logout from your account'),
            trailing: GestureDetector(
                onTap: (){
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (builder) => LoginPage(
                      ),
                    ),
                        (route) => false,
                  );
                },
                child: Icon(Icons.arrow_forward_ios)),
            onTap: () {
              // Logout functionality
            },
          ),
        ],
      ),
    );
  }
}
