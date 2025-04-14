import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:badges/badges.dart' as badges;
import 'package:shared_preferences/shared_preferences.dart';

String apiUrl = "https://frmq1lm1-5000.inc1.devtunnels.ms";

void main() {
  runApp(LibraryApp());
}

class LibraryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Library Management',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> boxLabels = [
    "Literature",
    "Computing",
    "Mathematics",
    "Science",
    "Fiction",
    "Economics"
  ];

  final List<Widget> pages = [
    LiteraturePage(),
    ComputingPage(),
    MathematicsPage(),
    SciencePage(),
    FictionPage(),
    EconomicsPage()
  ];

  final int notificationCount = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BOOKNEST"),
        actions: [
          badges.Badge(
            badgeContent: Text(
              notificationCount.toString(),
              style: TextStyle(color: Colors.white),
            ),
            position: badges.BadgePosition.topEnd(top: 0, end: 3),
            child: IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationsPage()),
                );
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.brown.shade300),
              child: Column(
                children: [
                  Text(
                    'Library Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            image: NetworkImage("https://i.im.ge/2025/04/04/pCowYC.boy1.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('QWERTY')
                    ],
                  )
                ],
              ),
            ),
            ListTile(title: Text('Home'), onTap: () => Navigator.pop(context)),
            ListTile(title: Text('Profile'), onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
            }),
            ListTile(title: Text('Books Issued'), onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BooksIssued()),
              );
            }),
            ListTile(title: Text('Tracker'), onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Tracker()),
              );
            }),
            ListTile(title: Text('Settings'), onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            }),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemCount: boxLabels.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => pages[index]),
                    );
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.brown.shade300,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        boxLabels[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Notifications")),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        )
    );
  }
}
class LiteraturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Literature")),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        )
    );
  }
}

class ComputingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Computing")),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        )
    );
  }
}

class MathematicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mathematics")),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        )
    );
  }
}

class SciencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Science")),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        )
    );
  }
}

class FictionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fiction")),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        )
    );
  }
}

class EconomicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Economics")),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        )
    );
  }
}
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Profile")),
        body: Container(
          decoration: BoxDecoration(
          color:Colors.brown.shade200,
        )
        )
    );
  }
}
class BooksIssued extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Books Issued")),
        body: Container(
          decoration: BoxDecoration(
            color:Colors.brown.shade200,
          ),
        )
    );
  }
}
class Tracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tracker")),
        body: Container(
          decoration: BoxDecoration(
            color:Colors.brown.shade200,
          ),
        )
    );
  }
}
class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Settings")),
        body: Container(
          decoration: BoxDecoration(
            color:Colors.brown.shade200,
          ),
        )
    );
  }
}
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController batchController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  bool isLoading = false;

  Future<void> registerUser() async {
    final url = Uri.parse('${apiUrl}/api/users/register');

    final payload = {
      "name": nameController.text,
      "email": emailController.text,
      "password": passwordController.text,
      "batch": batchController.text,
      "phone": phoneController.text,
    };

    setState(() => isLoading = true);

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(payload),
      );

      final data = jsonDecode(response.body);
      if (response.statusCode == 200 && data['token'] != null) {
        // Store token in cache
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('auth_token', data['token']);

        // Navigate to Home
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else {
        _showError(data['message'] ?? "Registration failed");
      }
    } catch (e) {
      _showError("Error: $e");
    } finally {
      setState(() => isLoading = false);
    }
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.book, size: 100, color: Colors.brown),
                SizedBox(height: 20),
                Text("Welcome to BookNest",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 30),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: "Username", border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: "Email", border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password", border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: batchController,
                  decoration: InputDecoration(labelText: "Batch", border: OutlineInputBorder()),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(labelText: "Phone Number", border: OutlineInputBorder()),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: isLoading ? null : registerUser,
                  child: isLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text("Login"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
