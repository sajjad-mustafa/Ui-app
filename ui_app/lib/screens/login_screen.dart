import 'package:flutter/material.dart';
import 'package:ui_app/screens/profile_screen.dart';
import 'package:ui_app/screens/signup_screen.dart';

import 'components/devoice.info.dart';
import 'components/input_text_field.dart';
import 'components/round_button.dart';

class LoginScreen extends StatefulWidget {

   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final emailFocusNode = FocusNode();

  final passwordFocusNode = FocusNode();

  bool isPasswordVisible = false;
  final _formKey = GlobalKey<FormState>(); //Form key for validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Column(
            children: [
              CircleAvatar(
                radius: 50,
                child: Image.asset('images/logo3.jpg'),
              ),
              SizedBox(height: height*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Text('Welcome',style: TextStyle(fontSize:width*0.05,fontWeight: FontWeight.bold),),
                  SizedBox(width:width*0.02,),
                  Text('Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize:width*0.05,color: Colors.redAccent ),)
                ],
              ),
            ],
          ),

          SizedBox(height: height*0.05,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height*0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60,left: 20,right: 20),
                  child: Column(
                    children: [

                      Form(
                        key: _formKey,
                        child: InputTextField(
                            myController: emailController,
                            focusNode: emailFocusNode,
                            onFiledSubmittedValue: (value){

                            },
                            keyBoardType: TextInputType.emailAddress,
                            obscureText: false,
                            hint: 'Email',

                            onValidator: (value){
                              if(value == null || value.isEmpty){
                                return 'Enter password';
                              }else if(!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                                  .hasMatch(value)
                              ){
                                return 'Enter a valid email';
                              }

                              return null;


                            }),
                      ),
                      SizedBox(height: height*0.025,),
                      InputTextField(
                          myController: passwordController,
                          focusNode: passwordFocusNode,
                          onFiledSubmittedValue: (value){

                          },
                          keyBoardType: TextInputType.text,
                          obscureText: !isPasswordVisible,
                          hint: 'Password',
                          //icon: Icons.visibility,



                          onValidator: (value){
                            if(value == null || value.isEmpty){
                              return 'Enter password';
                            }else if(value.length < 6){
                              return 'Password must be at least 6 charecters';
                            }

                            return null;

                          },
                      suffixIcon:IconButton(
                        icon: Icon(
                          isPasswordVisible? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: (){
                          setState((){
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ) ,
                      ),

                      SizedBox(height: height*0.030,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: RoundButton(name: 'Login',onPress: (){
                          if(_formKey.currentState!.validate()){
                            print('login successful');
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                          }

                        },),
                      ),
                      SizedBox(height: height*0.030,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                          },
                              child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.redAccent),))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
