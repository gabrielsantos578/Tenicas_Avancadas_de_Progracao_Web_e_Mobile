import 'package:flutter/material.dart'; 
//import 'package:appchocolateria/login.dart'; 

  

void main() => runApp(MyApp()); 

  

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

                  Navigator.pop(context); 

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

                  image: AssetImage( 
                      'assets/restauranteBackground.jpg'
                      ))), 

        )); 

  } 

} 