import 'package:flutter/material.dart';
import 'package:student_gpt/screens/dashboard.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return  
      Scaffold(
        backgroundColor: Colors.white,


        // Image at the top of the  page
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
            // space between the image and the text
          SizedBox(
              height: 30,
                ),
                // The welcome back text
                Container( 
                  child: Text("Welcome Back", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 30, 
                    color: Colors.black),
                    ),
                    )
                    // Space above the username input field
                    ,SizedBox(
                      height: 150,
                      ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: TextField(
                decoration: InputDecoration(
                 labelText: "Username",
                 enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 93, 91, 91)) ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0))
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
               ),
             ),
             SizedBox(
                      height: 10,
                      ), 
                  // Username and password box
        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: TextField(
                decoration: 
                InputDecoration(
                 labelText: "Password",
                 enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 93, 91, 91)) ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0))
                  ),
                  fillColor: Colors.white,
                  filled: true,

                ),
                // To make inputs unseen
                obscureText: true,
               ),
             ),
             SizedBox(
                      height: 10,
                      ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    color: Colors.black,
                    height: 10,
                    width: 10 ,
                    ),
                ),
                  Container(
                    child: Text("Remember me ?"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8) ,
                      child: TextButton(onPressed: (){}, child: Text("          Forgot Password", style: TextStyle(color: Colors.blue),)),
                    )
            ],),
            // Spaced for button
            SizedBox(
                      height: 30,
                      ),

                        Center(
                    child: ElevatedButton(
                      
                      onPressed: (){
                         
                      }, child: Text("     Login     ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 0, 0, 0), // Background color
                      ),
                    ),
                  ),

                // Space before the last button
                   SizedBox(
                      height: 10,
                      ),
                      
                      // Demo login button

                   Center(
                    child: ElevatedButton(
                       
                      onPressed: (){
                        Navigator.push(
                          context,
          
                  MaterialPageRoute(builder: (context) => const DashBoard()),
                          );
                      }, child: Text("Demo Login", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 189, 187, 187), // Background color
                      ),
                    ),
                  ),

                
                  ])
    );
  }
}