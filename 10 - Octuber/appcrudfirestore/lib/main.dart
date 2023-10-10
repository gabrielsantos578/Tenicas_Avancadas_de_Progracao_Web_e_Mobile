import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:appcrudfirestore/screens/lojas.dart';

//void main() => runApp(MyApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyD5-HV985N0Cn8FiS4H74H3uf_83trph5I",
        authDomain: "crudfirestoredb-b491c.firebaseapp.com",
        projectId: "crudfirestoredb-b491c",
        storageBucket: "crudfirestoredb-b491c.appspot.com",
        messagingSenderId: "636365995481",
        appId: "1:636365995481:web:13803890b7c92deeaf2dc8"),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Menu Drawer - Hamburguer',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountEmail: Text("appalupe@gmail.com"),
                accountName: Text("App Alupe"),
                currentAccountPicture: CircleAvatar(
                  child: Text("Alupe"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Perfil"),
                onTap: () {
                  Navigator.pop(context);

                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Lojas"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lojas()));

                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Contato"),
                onTap: () {
                  Navigator.pop(context);

                  //Navegar para outra página
                },
              ),
              ListTile(
                /*leading: Icon(Icons.login), 

                title: Text("Login"),*/

                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {
                  /*
                  Navigator.push( 

                    context, 

                    MaterialPageRoute( 

                      builder: (context) => Login(), 

                    ), 

                  ); 
                  */
                },
              ),
            ],
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/restauranteBackground.jpg'))),
        ));
  }
}
