import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:badges/badges.dart' as badges;
import 'package:shared_preferences/shared_preferences.dart';

String apiUrl = "https://frmq1lm1-5000.inc1.devtunnels.ms";

void main() {
  runApp(LibraryApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Options',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: LoginRegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Login/Register Page (Initial Screen)
class LoginRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        decoration: BoxDecoration(color: Colors.brown.shade200),
        child:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome!',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  side: BorderSide(color: Colors.deepPurple),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text('Login', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  side: BorderSide(color: Colors.deepPurple),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text('Register', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}


// Placeholder Register Page
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
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
                Text(
                  "Welcome to BookNest",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                TextField(
                  //controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  //controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    ); // Handle login logic
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LibraryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Library Management',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginRegisterPage(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> boxLabels = [
    "Literature",
    "Computing",
    "Mathematics",
    "Science Fiction",
    "Economics",
  ];

  final List<Widget> pages = [
    BookCategoryPage(bookType: "literature", title: "Literature"),
    BookCategoryPage(bookType: "computing", title: "Computing"),
    BookCategoryPage(bookType: "mathematics", title: "Mathematics"),
    BookCategoryPage(bookType: "science fiction", title: "Science Fiction"),
    BookCategoryPage(bookType: "economics", title: "Economics"),
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
                  Align(
                alignment: Alignment.topLeft,

                  child: Text(
                    'Library Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
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
                            image: NetworkImage(
                              "https://i.im.ge/2025/04/04/pCowYC.boy1.jpeg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('QWERTY'),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(title: Text('Home'), onTap: () => Navigator.pop(context)),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            ListTile(
              title: Text('Books Issued'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BooksIssued()),
                );
              },
            ),
            ListTile(
              title: Text('Tracker'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tracker()),
                );
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg",
            ),
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
              "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
// class LiteraturePage extends StatefulWidget {
//   @override
//   _LiteraturePageState createState() => _LiteraturePageState();
// }
//
// class _LiteraturePageState extends State<LiteraturePage> {
//   late Future<List<Book>> _booksFuture;
//
//   @override
//   void initState() {
//     super.initState();
//     _booksFuture = fetchBooksByType("literature");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Literature")),
//       body: FutureBuilder<List<Book>>(
//         future: _booksFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError || !snapshot.hasData) {
//             return Center(child: Text("Failed to load books."));
//           }
//
//           final books = snapshot.data!;
//           body: Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: NetworkImage(
//                     "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg"),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           );
//           return ListView.builder(
//             itemCount: books.length,
//             itemBuilder: (context, index) {
//               final book = books[index];
//               return Card(
//                 child: ListTile(
//                   title: Text(book.title),
//                   subtitle: Text("${book.author}\n${book.description}"),
//
//
//                 ),
//               );
//             },
//           );
//         },
//       ),
//
//     );
//   }
// }
// void _showSuccess(String message, BuildContext context) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(content: Text(message), backgroundColor: Colors.green),
//   );
// }
//
// void _showError(String message, BuildContext context) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(content: Text(message), backgroundColor: Colors.red),
//   );
// }

class BookCategoryPage extends StatefulWidget {
  final String bookType;
  final String title;

  BookCategoryPage({required this.bookType, required this.title});

  @override
  _BookCategoryPageState createState() => _BookCategoryPageState();
}

class _BookCategoryPageState extends State<BookCategoryPage> {
  late Future<List<Book>> _booksFuture;

  @override
  void initState() {
    super.initState();
    _booksFuture = fetchBooksByType(widget.bookType);
  }

  final Map<String, String> bookIcons = {
    "Literature":
        "https://media-hosting.imagekit.io/23abcfbc01b54935/9788126930784_456x700.webp?Expires=1839241893&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=CWAiCwWw052dyouilOFUGhYy2I4w7NpEB9If~nZwNf6iu3R0R2cZkooLIwSD2gHUzgymrwqqticE4cXSkR6nHv3InNIXuO2BV2Ni9Wb9jJ2AH7ppI1aghDwi5kbN087sB-KnyP-IbiyAxZ0DGqdjcrR2EkKa~MX1tifI9aGiqiW8E1HpwJ2KYyF6DhZDSWBctL5EFo3RZTpS7kUIoCM7247KRDLAXPxISVdU6eY2QbuKR0dRyPtaw4AjCDSgI9zvzVvuu2GeWE43MlIyBUlmsdoBKbLQwNpAXM4idFCk0rP52orieAMId4MbF2JW6s~2sjbcP9Ajo491LU39vXAzjg__",
    "Computing":
        "https://media-hosting.imagekit.io/90b26e0ed77d41ff/0470887990.jpg?Expires=1839241748&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=ZJv4EWrML23Z~QJV3BVi38KpjLJqXuDWMUmmdMfZ1OaJ41oDhKeSJlr07m0HZBLMdxszVocLN-HinZqQPcA1IWesBYzWuAuhrpqnoS6s5bAUkUXJglefAX1yWaF2OmHNG5io9~AUst-iRCZmbHDk9eauT2FePW~UJj4d9mApj6EYdUpiqtoN6SshIWWswsNb7R7LGTgBweRst3zvkKJDCMes9POQmbVgfXwOfnxHNGxaFMwy6xBQ8FNX2R5hvTlx~-WX1mPvbmEPFdk5R9K76lcMej7DUtGgdgObyUk04Xcy-eUdnlXAfuZzW9gYEmR28yZwBSgJ-kNKqnv800pLJQ__",
    "Mathematics":
        "https://media-hosting.imagekit.io/a93e0caa30af48e2/screenshot_1744630906640.png?Expires=1839238908&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=MYX7z6dqassQWnKzvZS7OQKFnMIHvxA~8nr4kW9yN85K8veTIsGBydQsOnj88hkxhmr43D8XZOU5GThfchlpiUsaWTZuCEmjaScfQvhdHrhNxNl1d6ZdtoM3uZT8jANVBXy6XlNizgCkNn3fRHZZs~NI7yS0FG0hFWzWSYTzfLUqjvnFrZ-AfNXt5k1L76LwepKbLpFPziVpHH29Enb-RROVCYWBAhem4u1owuJ2GOoGd2CFUWhf1p6C9XTx9t6bzSUgkWUjgLZxSSULN4BgUemddmO2GFXsti~JnvJHjIvsBmcp0S~PQFoHkmtJhhcCOYqDeyl5JYozRdCphljPEw__",
    "Science Fiction":
        "https://media-hosting.imagekit.io/5ebc4f369b70407c/download.jpg?Expires=1839241959&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=vD6AYDYN0ZjWJP7ddcMc~75Ua6IcjGXc72S5t89QNEzTUVpp2wTMlZTICQStG5iMMpbIwUPofYpYHP35TSh9wRvHPQzUPH8HezsBC5RBjyJyTuObHVV3NkrpwJpXKRnfL4FDl74AKRuMwxrVVYTNs6X1M1YR6z2CCheij6sZ8oKoxy123uaV~~shT-YAUpS8OU4gae-0dtCp~R-4waoNbLMHvQxi19-Iuft~BBXBjfXeW9Moho8QRg-h74K3KEnGbo~87EJS1t9bfaREcKu7Pv~Vez1qeQ6SNsLzsrmfETQ25CJgyYUFzxcE5ZIiO2VhLmLx0Fid~8t61Ku3~gO~bg__",
    "Economics":
        "https://media-hosting.imagekit.io/69e91b4e3e254bf2/download.jpg?Expires=1839241928&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=EUbNEGe-bBPOaNSRadPS6QGMEKWtWJj1uqVTdWkm8suGaswqfDrsBPppiGm7~C1w6SRf7kF2~Qkx-p8LbbSr8GXIbfoirkAznB-HuAkZ1BnXX42Y6WRMyWY9s4M7Yjam8ja47vTtVd8R3DsdsT-DEwtBwZCatmq7GxhROwlId0JOueQ-wTuwIj5yjXRURV36qo3RrBs5GCgJ9mTy3JRYNbgO19QuKgTzT31Hw0IOoZAV3CJWem1QtfmtaSyNUkJSIGhdGwOaZ5YlDjYxC2eDF5dsUGkag81IMNN39a--JCV-C6b15NronAjid8qcTCiF4JZNepkhasAO9XQ5bA9orA__",
  };

  Future<List<Book>> fetchBooksByType(String type) async {
    final response = await http.get(
      Uri.parse('$apiUrl/api/books?bookType=$type'),
    );

    if (response.statusCode == 200) {
      print(response.statusCode);
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      final List<dynamic> booksJson = jsonData['books'];
      return booksJson.map((json) => Book.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load books');
    }
  }

  Future<void> addToIssuedBooks(Book book) async {
    final url = '$apiUrl/api/books/issue';
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('user_id');

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'bookId': book.id, 'userId': userId}),
      );

      final jsonData = jsonDecode(response.body);

      if (response.statusCode == 200) {
        print('Book issued successfully');
        _showSuccess(jsonData['message']);
        setState(() {
          _booksFuture = fetchBooksByType(widget.bookType); // Refresh the list
        });
      } else {
        print('Issue error');
        _showError(jsonData['error']);
      }
    } catch (e) {
      print('Error: $e');
      _showError('Network error');
    }
  }

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.green),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: FutureBuilder<List<Book>>(
        future: _booksFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError || !snapshot.hasData) {
            return Center(child: Text("Failed to load books."));
          }

          final books = snapshot.data!;

          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];

                return Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.brown.shade900.withOpacity(0.75),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(2, 4),
                          ),
                        ],
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(12),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            bookIcons[widget.title] ??
                                "https://media-hosting.imagekit.io/23abcfbc01b54935/9788126930784_456x700.webp?Expires=1839241893&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=CWAiCwWw052dyouilOFUGhYy2I4w7NpEB9If~nZwNf6iu3R0R2cZkooLIwSD2gHUzgymrwqqticE4cXSkR6nHv3InNIXuO2BV2Ni9Wb9jJ2AH7ppI1aghDwi5kbN087sB-KnyP-IbiyAxZ0DGqdjcrR2EkKa~MX1tifI9aGiqiW8E1HpwJ2KYyF6DhZDSWBctL5EFo3RZTpS7kUIoCM7247KRDLAXPxISVdU6eY2QbuKR0dRyPtaw4AjCDSgI9zvzVvuu2GeWE43MlIyBUlmsdoBKbLQwNpAXM4idFCk0rP52orieAMId4MbF2JW6s~2sjbcP9Ajo491LU39vXAzjg__",
                            width: 60,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          book.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          book.author,
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: FloatingActionButton(
                        // onPressed: book.issuedTo != null
                        // ? null
                        //     : () => addToIssuedBooks(book),
                        onPressed:
                            (book.issuedTo == null || book.issuedTo.isEmpty)
                                ? () => addToIssuedBooks(book)
                                : null,
                        child: Icon(
                          (book.issuedTo == null || book.issuedTo.isEmpty)
                              ? Icons.add
                              : Icons.check,
                          color: Colors.white,
                        ),
                        backgroundColor:
                            (book.issuedTo == null || book.issuedTo.isEmpty)
                                ? Colors.green
                                : Colors.red,

                        // child: Icon(
                        // book.issuedTo != null ? Icons.check : Icons.add,
                        // color: Colors.white,
                        // ),
                        // backgroundColor:
                        // book.issuedTo != null ? Colors.grey : Colors.green,
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Container(
        decoration: BoxDecoration(color: Colors.brown.shade200),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage("https://i.im.ge/2025/04/04/pCowYC.boy1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: EdgeInsets.only(bottom: 8),
                    child: ListTile(title: Text('Name')),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: EdgeInsets.only(bottom: 8),
                    child: ListTile(title: Text('Email')),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: EdgeInsets.only(bottom: 8),
                    child: ListTile(title: Text('Batch')),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      title: Text('Phone Number'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginRegisterPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BooksIssued extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Books Issued")),
      body: Container(decoration: BoxDecoration(color: Colors.brown.shade200)),
    );
  }
}

class Tracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tracker")),
      body: Container(decoration: BoxDecoration(color: Colors.brown.shade200)),
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Settings")),
      body: Container(
        decoration: BoxDecoration(color: Colors.brown.shade200),
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.only(bottom: 8),
              child: ListTile(title: Text('Account')),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.only(bottom: 8),
              child: ListTile(title: Text('Language')),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.only(bottom: 8),
              child: ListTile(title: Text('Help')),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.only(bottom: 8),
              child: ListTile(title: Text('Logout'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginRegisterPage()),
                    );
                  }
              ),
            ),
          ],
        ),
      ),

    );
  }
}

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController batchController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Settings")),
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               margin: EdgeInsets.only(bottom: 8),
//               child: ListTile(title: Text('Account')),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               margin: EdgeInsets.only(bottom: 8),
//               child: ListTile(title: Text('Language')),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               margin: EdgeInsets.only(bottom: 8),
//               child: ListTile(title: Text('Help')),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               margin: EdgeInsets.only(bottom: 8),
//               child: ListTile(
//                 title: Text('Logout'),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => LoginRegisterPage(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
        await prefs.setString('user_id', data['userId']);

        // Navigate to Home
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
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

  void _showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.green),
    );
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
                Text(
                  "Welcome to BookNest",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: batchController,
                  decoration: InputDecoration(
                    labelText: "Batch",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: isLoading ? null : registerUser,
                  child:
                      isLoading
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text("Register"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },

                  child: Text("Already an user,Login!"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Book {
  final String id;
  final String title;
  final String author;
  final String description;
  final String issuedTo;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.issuedTo,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['_id'] ?? 'no id',
      title: json['title'] ?? 'No Title',
      author: json['author'] ?? 'Unknown Author',
      description: json['description'] ?? 'No Description',
      issuedTo: json['issuedTo'] ?? '',
    );
  }
}

Future<List<Book>> fetchBooksByType(String bookType) async {
  final url = Uri.parse('$apiUrl/api/books?bookType=$bookType');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      if (jsonData['success']) {
        List<dynamic> booksJson = jsonData['books'];
        return booksJson.map((book) => Book.fromJson(book)).toList();
      } else {
        throw Exception("Failed to load books: ${jsonData['message']}");
      }
    } else {
      throw Exception("Failed to fetch books");
    }
  } catch (e) {
    print("API Error: $e");
    return [];
  }
}
