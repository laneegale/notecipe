import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  String _selectedTheme = 'Light';

  final List<String> _themes = ['Light', 'Dark', 'System Default'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          // Notifications toggle
          SwitchListTile(
            title: Text('Enable Notifications'),
            value: _notificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                _notificationsEnabled = value;
              });
              // TODO: Save setting persistently or update app state
            },
            secondary: Icon(Icons.notifications),
          ),

          Divider(),

          // Theme selection dropdown
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text('Theme'),
            trailing: DropdownButton<String>(
              value: _selectedTheme,
              items: _themes
                  .map((theme) => DropdownMenuItem(
                        child: Text(theme),
                        value: theme,
                      ))
                  .toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _selectedTheme = value;
                  });
                  // TODO: Apply theme change
                }
              },
            ),
          ),

          Divider(),

          // About section
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About Notecipe'),
            subtitle: Text('Version 1.0.0'),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'Notecipe',
                applicationVersion: '1.0.0',
                applicationIcon: Icon(Icons.restaurant_menu),
                applicationLegalese: '© 2025 Notecipe Inc.',
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                        'Notecipe is your friendly app for sharing and discovering great recipes. Happy cooking!'),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
