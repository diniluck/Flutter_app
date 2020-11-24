import 'package:flutter/material.dart';
import 'package:kidsride/booking.dart';
import 'package:kidsride/homepage.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>homepage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0,left: 20),
                  child: Container(
                    child: Icon(Icons.arrow_back_ios, color: Colors.grey,size: 22),
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.deepOrange),
              ),
            ),
            SizedBox(height: 40),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Write your e-Mail',
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                    hintText: '01933338721',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Booking()));
              },
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                        'Forget Password?',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                        'Click Here',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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


