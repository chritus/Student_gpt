import 'package:flutter/material.dart';
import 'package:student_gpt/screens/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //bottom image 
        bottomNavigationBar: Image.asset("images/Rectangle 3.png"),


            //  Top image 
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      child: Image.asset("images/Rectangle 3.png", width: 360.0,),
                    ),
                  ],
                ),  
              ],
            ),
            // This is the space between the two images at the top.
             SizedBox(
              height: 30,
                ),
            // The message image
          Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("images/Rectangle 6.png"),
              ],
                  ),
                ),

               //Authers name box
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0,),
                  gradient: LinearGradient(
            colors: [Color.fromARGB(255, 223, 30, 187), Color.fromARGB(255, 100, 22, 149)],
              ),
                    ),
                  height: 30,
                  width: 120,
                  child: Center(
                    child: Text("Built by Prince-Fredrick", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 9.5, 
                      color: Colors.white)
                      ),
                    ),
                ),
                // Space before the student gpt
              SizedBox(
                  height: 200,
                ),
                // Student gpt text
                Container(
                  child: Text("Student GPT",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,),
                  ),
                ),

                // Space before the about app
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  width: 330,

                  child: Text("AGPT specifically tailored to assist students with their academic endeavors. It would likely be adept at providing explanations, answering questions, offering study tips, assisting with homework, generating essay outlines, and even helping with project brainstorming.",
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,)
                ),
                // Space before the button 
                SizedBox(
                  height: 20,
                ),
                  ElevatedButton(
  onPressed: () {
      Navigator.push(
          context,
          
          MaterialPageRoute(builder: (context) => const SecondPage()),
        );
  },
  style: ElevatedButton.styleFrom(
    primary: const Color.fromARGB(255, 0, 0, 0), // Background color
  ),
  child: Text('Get started', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
),

                ],

        ),
        
      );
  }
}