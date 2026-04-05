import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port_folio/home.dart';
import 'package:port_folio/projects.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Soho'),
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/project': (context) => MyProjects(),
      '/': (context) => MyHome(),
      '/about': (context) => MyApp(),
    },
  ));
}



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top:60),
              alignment: Alignment.topCenter,
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.lightBlueAccent,Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset('assets/img.png',
                height: 400,
                fit: BoxFit.contain,),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.55
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hello I am',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Elena Brooks',
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 40)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Software Developer',
                  style: TextStyle(color: Colors.white, fontSize: 20),),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Hire Me'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white,
                      ),
                    ),
                    width: 120,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                      )
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                      )
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      )
                    ),
                    IconButton(
                      onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                    )
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                      )
                    )
                  ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}