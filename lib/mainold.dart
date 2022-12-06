import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  get body => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                child: Center(
                  child: SizedBox(
                    width: 110.0,
                    height: 110.0,
                    child: Image.network(
                        "https://previews.123rf.com/images/leonardo255/leonardo2551501/leonardo255150100044/35950803-atom-icon.jpg"),
                  ),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'ATOM',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top:60, left:10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top:10, left:10, bottom: 20),
                child: const Text(
                  'Hi there! Nice to see you again.',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 40),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Item UUID',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const WelcomePageRoute()),
                    );
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top:170),
                child: TextButton(
                  child: const Text('Sign up', style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpPageRoute()),
                      );
                    }
                )),
            Row(
              children: <Widget>[
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}

class SignUpPageRoute extends StatelessWidget {
  const SignUpPageRoute({Key? key}) : super(key: key);

  static const String _title = 'SignUpPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  get body => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                child: Center(
                  child: SizedBox(
                    width: 110.0,
                    height: 110.0,
                    child: Image.network(
                        "https://previews.123rf.com/images/leonardo255/leonardo2551501/leonardo255150100044/35950803-atom-icon.jpg"),
                  ),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'ATOM',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top:60, left:10),
                child: const Text(
                  'Sign up',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top:10, left:10, bottom: 20),
                child: const Text(
                  'Hi there! Nice to meet you.',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 40),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Item UUID',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Register Account'),
                    onPressed: () {
                      Navigator.pop(context);
                      print(nameController.text);
                      print(passwordController.text);
                    }
                )
            ),
            Row(
              children: <Widget>[
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}

class WelcomePageRoute extends StatelessWidget {
  const WelcomePageRoute({Key? key}) : super(key: key);

  static const String _title = 'WelcomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  get body => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.only(top:20),
                child: Center(
                  child: SizedBox(
                    width: 130.0,
                    height: 130.0,
                    child: Image.network(
                        "https://www.nicepng.com/png/detail/182-1829287_cammy-lin-ux-designer-circle-picture-profile-girl.png"),
                  ),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom:110),
                child: const Text(
                  'Jane Doe',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            GestureDetector(
              // When the child is tapped, do your work
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPageRoute()),
                );
              },
              // Container
              child: SizedBox(
                width: 35.0,
                height: 50.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Image.network('https://www.pngfind.com/pngs/b/680-6800118_home-icon-png-transparent.png',
                            height: 25,
                            width: 25,
                            ),
                          ),
                          Expanded(
                            child: Text('Home', textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20),),
                          ),
                          Expanded(
                            child: Image.network('https://iili.io/pPmDUG.png',
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ],
                      ),
                  ),
                 ),
                ),
               ),

            Container(
              padding: const EdgeInsets.only(top: 100),
            ),

            GestureDetector(
              // When the child is tapped, do your work
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPageRoute()),
                );
              },
              // Container
              child: SizedBox(
                width: 35.0,
                height: 50.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.network('https://www.pngaaa.com/api-download/4877784',
                            height: 28,
                            width: 28,
                          ),
                        ),
                        Expanded(
                          child: Text('Devices', textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20),),
                        ),
                        Expanded(
                          child: Image.network('https://iili.io/pPmDUG.png',
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.only(top: 100),
            ),

            GestureDetector(
              // When the child is tapped, do your work
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPageRoute()),
                );
              },
              // Container
              child: SizedBox(
                width: 35.0,
                height: 50.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.network('https://iili.io/piOjp4.png',
                            height: 28,
                            width: 28,
                          ),
                        ),
                        Expanded(
                          child: Text('Settings', textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20),),
                        ),
                        Expanded(
                          child: Image.network('https://iili.io/pPmDUG.png',
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Row(
              children: <Widget>[
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}