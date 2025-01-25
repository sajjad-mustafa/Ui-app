import 'package:flutter/material.dart';
import 'package:ui_app/screens/components/devoice.info.dart';
import 'package:ui_app/screens/components/round_button.dart';
import 'package:ui_app/screens/followers_screen.dart';
import 'package:ui_app/screens/shots_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
                  children: [
                    Icon(Icons.arrow_back),
                    Text('Profile',style: TextStyle(fontSize: width*0.025,fontWeight: FontWeight.bold)),
                    Icon(Icons.logout)
                  ],
                ),
              ),
              SizedBox(height: height*0.050,),
              Column(
                children: [
                  CircleAvatar(
                    radius: 40,

                  ),
                  SizedBox(height: height*0.025),
                  Text('Sajjad Mustafa',style: TextStyle(fontSize: width*0.030,fontWeight: FontWeight.bold),),
                  SizedBox(height: height*0.010),
                  Text('Nawabshah Sindh Pakistan')
                ],
              ),
              SizedBox(height: height*0.050,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shots'),
                    Text('Collections'),
                    Text('Liked Shots'),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FollowersScreen()));
                          //Navigator.pop(context);
                        },
                        child: Text('Followers'))
                  ],
                ),
          
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35,left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('120',style: TextStyle(fontSize:width*0.060,color: Colors.blue,fontWeight: FontWeight.bold, ),),
                    Text('05',style: TextStyle(fontSize:width*0.060 ,color: Colors.blue,fontWeight: FontWeight.bold,),),
                    Text('500',style: TextStyle(fontSize:width*0.060,color: Colors.blue,fontWeight: FontWeight.bold, ),),
                    Text('200',style: TextStyle(fontSize:width*0.060 ,color: Colors.blue,fontWeight: FontWeight.bold,),),
                  ],
                ),
              ),
              SizedBox(height: height*0.050,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: RoundButton(name: 'Follow',
                  onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ShotsScreen()));
                  },),
              ),
              SizedBox(height: height*0.040,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('About',style: TextStyle(fontSize:width*0.060,color: Colors.blue,fontWeight: FontWeight.bold, ),),
                    Row(
                      children: [
                        Text('All',style: TextStyle(fontSize: width*0.050),),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
          
          
                  ],
          
                ),
              ),
              SizedBox(height: height*0.020,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text("I'm Skilled Flutter developer specializing in creating dynamic, responsive, and cross-platform mobile applications!.. ")
                  ],
                ),
              ),
              SizedBox(height: height*0.025,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shots',style: TextStyle(fontSize:width*0.060,color: Colors.blue,fontWeight: FontWeight.bold, ),),
                    Row(
                      children: [
                        Text('All',style: TextStyle(fontSize: width*0.050),),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
          
          
                  ],
          
                ),
              ),
              SizedBox(height: height*0.010,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: height*0.2,
          
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset('images/smart_home.png',fit:BoxFit.cover,),
                      ),
                    ),
                    SizedBox(width: width*0.030,),
                    Expanded(
                      child: Container(
                        
                      height: height*0.2,
                        
          
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)
                            
                        ),
                        child: Image.asset('images/img.png',fit: BoxFit.cover,),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
