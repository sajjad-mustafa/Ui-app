import 'package:flutter/material.dart';
import 'package:ui_app/screens/components/devoice.info.dart';
import 'package:ui_app/screens/components/input_text_field.dart';
import 'package:ui_app/screens/components/round_button.dart';
import 'package:ui_app/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confromPasswordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final nameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final confromPasswordFocusNode = FocusNode();

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  final _formKey = GlobalKey<FormState>();

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

                      Text('Create An',style: TextStyle(fontSize:width*0.05,fontWeight: FontWeight.bold),),
                      SizedBox(width:width*0.02,),
                      Text('Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize:width*0.05,color: Colors.redAccent ),)
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
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60,left: 20,right: 20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        InputTextField(
                            myController: nameController,
                            focusNode: nameFocusNode,
                            onFiledSubmittedValue: (value){

                            },
                            keyBoardType: TextInputType.text,
                            obscureText: false,
                            hint: 'Username',

                            onValidator: (value){
                              return value.isEmpty? 'Enter name': null;

                            }),
                        SizedBox(height: height*0.025,),
                        InputTextField(
                            myController: emailController,
                            focusNode: emailFocusNode,
                            onFiledSubmittedValue: (value){

                            },
                            keyBoardType: TextInputType.emailAddress,
                            obscureText: false,
                            hint: 'Email',

                            onValidator: (value){
                              if(value == null || value.isEmpty){
                                return 'Enter email';
                              }else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                                  .hasMatch(value)) {
                                return 'Enter a valid email';
                              }
                              return null;

                            }),
                        SizedBox(height: height*0.025,),
                        InputTextField(
                            myController: passwordController,
                            focusNode: passwordFocusNode,
                            onFiledSubmittedValue: (value){

                            },
                            keyBoardType: TextInputType.text,
                            obscureText: !isPasswordVisible,
                            hint: 'Password',

                            onValidator: (value){
                              if(value == null || value.isEmpty){
                                return 'Enter password';
                              }else if(value.length < 6){
                                return 'Password must be at least 6 characters';
                              }
                              return null;

                            },
                        suffixIcon: IconButton(
                          icon: Icon(
                            isPasswordVisible? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: (){
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                            ),
                        ),
                        SizedBox(height: height*0.025,),
                        InputTextField(
                            myController: confromPasswordController,
                            focusNode: confromPasswordFocusNode,
                            onFiledSubmittedValue: (value){

                            },
                            keyBoardType: TextInputType.text,
                            obscureText: !isConfirmPasswordVisible,
                            hint: 'Confrom Password',

                            onValidator: (value){
                              if(value == null || value.isEmpty){
                                return 'Enter confirm password';
                              }else if(value != passwordController.text){
                                return 'Passwords do not match';
                              }
                              return null;

                            },
                          suffixIcon: IconButton(
                            icon: Icon(
                              isConfirmPasswordVisible? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: (){
                              setState(() {
                                isConfirmPasswordVisible = !isConfirmPasswordVisible;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: height*0.030,),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: RoundButton(name: 'SignUp',onPress: (){
                            if(_formKey.currentState!.validate()){
                              print('Signup successful');
                            }
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                          },),
                        )
                      ],
                    ),
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
