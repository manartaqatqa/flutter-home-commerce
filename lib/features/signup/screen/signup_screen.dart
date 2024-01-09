import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class SignupScreen extends StatefulWidget {
   SignupScreen({super.key});


  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:1,horizontal:20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Form(
                    key: _key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        },
                            icon: Icon(Icons.arrow_back)
                        ),
                        SizedBox(height: 30,),
                        Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          'please enter your information below to sign up',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child:Image.asset("assets/images/app_logo.jpg",
                      width: 100,
                      height: 100,)
                  ),
                  SizedBox(height:50.0),
                  Material(
                    borderRadius: BorderRadius.circular(13.0),
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 15),
                      child: TextFormField(
                        validator: (value){
                          if(value == null){
                            return "name cannot be null";
                          }
                        },
                        controller: nameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          hintText: "Please enter your name",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:20.0),
                  Material(
                    borderRadius: BorderRadius.circular(13.0),
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 15),
                      child: TextFormField(
                        validator: (value){
                          if(value == null){
                            return "email address cannot be null";
                          } else if(value.length < 5){
                            return "email address cannot be less than 5 characters";
                          }
                        },
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: "Please enter your email",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:20.0),
                  Material(
                    borderRadius: BorderRadius.circular(13.0),
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 15),
                      child: TextFormField(
                        validator: (value){
                          if(value == null){
                            return "password cannot be null";
                          } else if(value.length < 4){
                            return "password cannot be less than 4 digits";
                          }
                        },
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: "Please enter your password",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  MaterialButton(
                    onPressed: () async{
                      try{
                        var response= await Dio().post(
                            "https://api.escuelajs.co/api/v1/users/",
                            data: {
                              "name": nameController.text,
                              "email": emailController.text,
                              "password": passwordController.text,
                              "avatar" : "https://picsum.photos/800",
                            }
                        );
                        if(response.statusCode == 201){
                          print("success");
                          print(response.data);
                          Navigator.pop(context);
                        }
                      }
                      catch(e){
                        print(e.toString());
                      }
                    },
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 16,horizontal: 30),
                    color: Colors.deepPurple[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                  SizedBox(height: 30,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account? ',
                          style: TextStyle(
                              fontSize: 15
                          ),),
                        TextButton(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.deepPurpleAccent
                            ),
                          ),
                          onPressed: (){
                            Navigator.pushNamed(context, "login");
                          },
                        ),

                      ]
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}



