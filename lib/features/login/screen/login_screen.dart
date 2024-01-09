import 'package:flutter/material.dart';
import 'package:home_commerce/controllers/db/offline/shared_helper.dart';
import 'package:home_commerce/controllers/db/offline/cache_keys.dart';
import 'package:dio/dio.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:1,horizontal:20),
            child: SingleChildScrollView(
              child: Form(
                key: _key,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                      children: [
                        SizedBox(height: 70,),
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Login to your existing account',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Image.asset("assets/images/app_logo.jpg",
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
                              return "email address cannot be null";
                            } else if(value.length < 5){
                              return "email address cannot be less than 5 characters";
                            }
                          },
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            hintText: "e.g name@example.com",
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
                            hintText: "e.g ************",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Align "Forgot Password?" to the left
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {
                          },
                        ),
                        SizedBox(width: 2,),
                        Text(
                          'Remember me',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(width: 90), // Add some space before the text
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50.0),
                    isLoading
                        ? const Center(child: CircularProgressIndicator(),)
                        :
                    MaterialButton(
                      onPressed: () async{
                        if(_key.currentState!.validate()){
                          print("no validation error");
                        }
                        setState(() {
                          isLoading = true;
                        });
                        try{
                          var response= await Dio().post(
                              "https://api.escuelajs.co/api/v1/auth/login",
                              data: {
                                "email": emailController.text,
                                "password": passwordController.text,
                              }
                          );
                          if(response.statusCode == 201){
                            print("success");
                            await SharedHelper.prefs.setString(
                                CacheKeys.token.name,
                                response.data["access_token"]
                            );
                            await SharedHelper.prefs.setBool(CacheKeys.isLogin.name, true);
                            Navigator.pushReplacementNamed(context, "mainScreen");
                          }
                        }
                        catch(e){
                          print(e.toString());
                        }
                        setState(() {
                          isLoading = false;
                        });
                      },
                      minWidth: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 30),
                      color: Colors.deepPurple[400],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),

                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        CircleAvatar(
                          backgroundImage: NetworkImage('https://www.techjunkie.com/wp-content/uploads/2020/11/How-to-Change-the-Google-Logo-1200x1200.jpg'),
                        ),
                        SizedBox(width: 20,),
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://www.pngitem.com/pimgs/m/506-5062674_facebook-transparent-logo-round-facebook-logo-round-white.png'),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have an account? ',
                          style: TextStyle(
                            fontSize: 15
                          ),),
                          TextButton(
                            child: Text(
                                'Sign up',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.deepPurpleAccent
                              ),
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, "signup");
                            },
                        ),

                        ]
                    ),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}



