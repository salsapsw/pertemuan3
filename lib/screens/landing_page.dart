import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../widgets/side_menu.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  void _logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    await prefs.remove('username');
    Navigator.of(context).pushReplacementNamed('/');
  }

  Future<String?> _getUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('username');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Earth, Love, Life')),
      drawer: const SideMenu(),
      body: FutureBuilder<String?>(
        future: _getUsername(),
        builder: (context, snapshot) {
          String welcomeMessage = 'Welcome!';
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            welcomeMessage = 'Error loading username';
          } else if (snapshot.hasData && snapshot.data != null) {
            final username = snapshot.data!;
            welcomeMessage = 'Welcome, $username!';
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(welcomeMessage, style: const TextStyle(fontSize: 24)),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'In the hustle and bustle of modern life, let us remember how precious the Earth we inhabit truly is. Our planet is not just our home; it is also a sanctuary for countless flora and fauna that depend on one another for survival. By protecting the environment, we not only preserve the beauty of nature but also ensure the sustainability of life for future generations. Let’s express our love for the Earth through simple actions, such as reducing plastic usage, supporting sustainable farming, and keeping our surroundings clean. Every small step we take can have a significant impact on life on this planet. Together, let’s turn our love for the Earth into meaningful action!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                // const SizedBox(height: 20),
                // ElevatedButton(
                //   onPressed: () => _logout(context),
                //   child: const Text('Logout'),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
