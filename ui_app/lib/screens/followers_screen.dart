import 'package:flutter/material.dart';

class FollowersScreen extends StatelessWidget {

  final List<String> followers = [
    'Shahzad',
    'Zain',
    'Shahzaib',
    'Tanveer',
    'Waseem'
  ];
  FollowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Followers Screen',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: followers.length,
          itemBuilder: (context , index){
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(followers[index][0]),
                  ),
                  title: Text(followers[index]),
                  trailing: TextButton(onPressed: (){},
                      child: Text('Follow')),
                ),
              ),
            );
          }),
    );
  }
}
