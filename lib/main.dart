import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
              colors: [Colors.blue.shade900,
                Colors.green.shade800,
                Colors.deepOrange.shade800

              ]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 100,),
            Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(" Login",style:TextStyle(color: Colors.white, fontSize: 40 ),),
                    SizedBox(height: 10,),
                    Text(" Welcome Back",style:TextStyle(color: Colors.white, fontSize:18 ),)

                  ],
                ),
            ),
            SizedBox(height: 10,),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget> [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [BoxShadow(
                              color: Color.fromARGB(225, 95, 27, 3),
                                blurRadius: 20,
                                offset: Offset(0,10)

                            )]
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.green.shade50,
                                  filled: true,
                                  hintText: " Name",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  )
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    fillColor: Colors.green.shade50,
                                    filled: true,
                                    hintText: " Surname",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    )
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    fillColor: Colors.green.shade50,
                                    filled: true,
                                    hintText: " Email",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    )
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    fillColor: Colors.green.shade50,
                                    filled: true,
                                    hintText: " Password",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    )
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    fillColor: Colors.green.shade50,
                                    filled: true,
                                    hintText: " Confirm password",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    )
                                ),
                              )

                            ],
                          ),
                        )

                      ],
                    ),

                  ),

                ),
            ),



          ],
        ),

      )
    );

  }
}
