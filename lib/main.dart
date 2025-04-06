// // // import 'package:flutter/material.dart';
// // //
// // // void main() {
// // //   runApp(LibraryApp());
// // // }
// // //
// // // class LibraryApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       debugShowCheckedModeBanner: false,
// // //       title: 'Library Management',
// // //       theme: ThemeData(primarySwatch: Colors.blue),
// // //       home: HomeScreen(),
// // //     );
// // //   }
// // // }
// // // class HomeScreen extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(title: Text("BOOKNEST")),
// // //       drawer: Drawer(
// // //         child: ListView(
// // //           padding: EdgeInsets.zero,
// // //           children: <Widget>[
// // //             DrawerHeader(
// // //               decoration: BoxDecoration(color: Colors.blue),
// // //               child: Column(
// // //                 children: [
// // //                   Text('Library Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
// // //                   Row(
// // //                     children: [
// // //                       Container(
// // //                         width: 50,
// // //                         height: 50,
// // //                         decoration: BoxDecoration(
// // //                           shape: BoxShape.circle,
// // //                           color: Colors.amberAccent,
// // //                         ),
// // //                       ),
// // //                       Text('QWERTY')
// // //                     ],
// // //                   )
// // //                 ],
// // //               ),
// // //             ),
// // //             ListTile(
// // //               title: Text('Home'),
// // //               onTap: () => Navigator.pop(context),
// // //             ),
// // //             ListTile(
// // //               title: Text('Profile'),
// // //               onTap: () {},
// // //             ),
// // //             ListTile(
// // //               title: Text('Books Issued'),
// // //               onTap: () {},
// // //             ),
// // //             ListTile(
// // //               title: Text('Tracker'),
// // //               onTap: () {},
// // //             ),
// // //             ListTile(
// // //               title: Text('Settings'),
// // //               onTap: () {},
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //       body: Container(
// // //         width: double.infinity,
// // //         child: Column(
// // //
// // //           spacing: 20,
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             Container(
// // //                 width: 150,
// // //                 height: 150,
// // //                 decoration: BoxDecoration(
// // //                   color: Colors.blue,
// // //                   border: Border.all(color: Colors.black, width: 2),
// // //                   borderRadius: BorderRadius.circular(10),
// // //                 ),
// // //               child: Center(
// // //                 child: Text("data"),
// // //               ),
// // //               ),
// // //             Container(
// // //               width: 150,
// // //               height: 150,
// // //               decoration: BoxDecoration(
// // //                 color: Colors.blue,
// // //                 border: Border.all(color: Colors.black, width: 2),
// // //                 borderRadius: BorderRadius.circular(10),
// // //               ),
// // //               child: Center(
// // //                 child: Text("data"),
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //       );
// // //   }
// // // }
// //
// //
//
// import 'package:flutter/material.dart';
// import 'package:badges/badges.dart' as badges;
//
// void main() {
//   runApp(LibraryApp());
// }
//
// class LibraryApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Library Management',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   final List<String> boxLabels = [
//     "Literature",
//     "Computing",
//     "Mathematics",
//     "Science",
//     "Fiction",
//     "Economics"
//   ];
//   final int notificationCount = 5;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("BOOKNEST"),
//         actions: [
//           badges.Badge(
//             badgeContent: Text(
//               notificationCount.toString(),
//               style: TextStyle(color: Colors.white),
//             ),
//             position: badges.BadgePosition.topEnd(top: 0, end: 3),
//             child: IconButton(
//               icon: Icon(Icons.notifications),
//               onPressed: () {
//                 Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationsPage()),
//                 );
//                 // Handle notification tap
//               },
//             ),
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(color: Colors.brown.shade300),
//               child: Column(
//                 children: [
//                   Text(
//                     'Library Menu',
//                     style: TextStyle(color: Colors.white, fontSize: 24),
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: 50,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.amberAccent,
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text('QWERTY')
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             ListTile(title: Text('Home'), onTap: () => Navigator.pop(context)),
//             ListTile(title: Text('Profile'), onTap: () {}),
//             ListTile(title: Text('Books Issued'), onTap: () {}),
//             ListTile(title: Text('Tracker'), onTap: () {}),
//             ListTile(title: Text('Settings'), onTap: () {}),
//           ],
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//                 "https://cdn.pixabay.com/photo/2017/08/06/22/01/books-2596809_1280.jpg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: GridView.builder(
//               shrinkWrap: true,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//                 childAspectRatio: 1,
//               ),
//               itemCount: boxLabels.length,
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//
//                 onTap: () {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text("${boxLabels[index]} Clicked")),
//                   );
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => NotificationsPage()));
//                 },
//                 child:
//                   Container(
//                   width: 80,
//                   height: 80,
//                   decoration: BoxDecoration(
//                     color: Colors.brown.shade300,
//                     border: Border.all(color: Colors.black, width: 2),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Center(
//                     child: Text(
//                       boxLabels[index],
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.white, fontSize: 16),
//                     ),
//                   ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// //import 'package:flutter/material.dart';
//
// class NotificationsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Notifications")),
//       body: Center(
//         child: Text(
//           "No new notifications",
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
//
// class literature extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("literature")),
//       body: Center(
//         child: Text(
//           "No new notifications",
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
// class computing extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("computing")),
//       body: Center(
//         child: Text(
//           "No new notifications",
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
// class Mathematics extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("mathematics")),
//       body: Center(
//         child: Text(
//           "No new notifications",
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
// class science extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("science")),
//       body: Center(
//         child: Text(
//           "No new notifications",
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
// class Fiction extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Fiction")),
//       body: Center(
//         child: Text(
//           "No new notifications",
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
// class Economics extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Economics")),
//       body: Center(
//         child: Text(
//           "No new notifications",
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

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
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.book, size: 100, color: Colors.brown),
              SizedBox(height: 20),
              Text("Welcome to BookNest",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  labelText: "email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  labelText: "batch",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  labelText: "phone-number",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown, foregroundColor: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
