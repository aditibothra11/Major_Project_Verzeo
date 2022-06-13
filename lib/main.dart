import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp( MaterialApp(
    title: 'Android App Development April Major Project',
    initialRoute: '/',
    routes: {
      '/':(context) => const FirstScreen(),
      '/second':(context)=> const SecondScreen(),
      '/third':(context) => const ThirdScreen(),
      '/last':(context)=>const LastScreen(),
    },
  )
  );
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            child: const Center(
              //padding: const EdgeInsets.all(16),
                child: Text('Have a Good Day',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 80),
                )
            ),
          ),
          Container(
            child: Center(
              //alignment: Alignment.center,
              //padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  child: const Text('Enter',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        //fontStyle: FontStyle.italic,
                        fontSize: 50
                    ),),
                  onPressed: (){
                    Navigator.pushNamed(context, '/second');
                  },
                )
            ),
          )

        ],
      ),
    );
  }
}


class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text('Personal Details',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 80),
              )
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "Name: Aditi Bothra",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "Age: 20",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "DOB: 21 Jan, 2002",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 150,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "Hobbies: Playing Sports, Watching Movies, Musical Instruments, Singing, Reading Books, Playing Casio, Shooting, Writing Poems",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset("assets/images/passport.jpeg",
            width: 450,
            height:600,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              child: const Text('Next Activity',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                    fontSize: 50
                ),
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/third');
              },
            ),
          )
        ],
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text('Skills',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 80),
              )
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "C Programming : Excellent",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "C++ Programming : Excellent",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "Python : Good",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "Playing BasketBall : Good",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "Karate : Excellent",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "Singing : Good",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "Android Development : Good",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "Musical Instruments : Good",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "Shooting : Good",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              child: const Text('Next Activity',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                    fontSize: 50
                ),
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/last');
              },
            ),
          )
        ],
      ),
    );
  }
}

class LastScreen extends StatefulWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text('Thank You',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 80),
              )
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "Phone Number: 7067924922",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 50,
            height: 75,
            padding: EdgeInsets.all(12),
            alignment: Alignment.center,
            child: const Text(
              "Email : aditibothra11@gmail.com",
              style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30
              ),
              textAlign: TextAlign.center,
            ),
          ),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  children: [
                    TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                      text: "GitHub : ",
                    ),
                    TextSpan(
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w100,
                            fontStyle: FontStyle.italic,
                            fontSize: 30
                        ),
                        text: "Click here",
                        recognizer: TapGestureRecognizer()..onTap =  () async{
                          var url="https://github.com/aditibothra11";
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }
                    )
                  ]
              )),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  children: [
                    TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                      text: "LinkedIn : ",
                    ),
                    TextSpan(
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w100,
                            fontStyle: FontStyle.italic,
                            fontSize: 30
                        ),
                        text: "Click here",
                        recognizer: TapGestureRecognizer()..onTap =  () async{
                          var url="https://www.linkedin.com/in/aditi-bothra-4a456022b/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }
                    )
                  ]
              ))
        ],
      ),
    );
  }
}

