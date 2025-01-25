import 'package:flutter/material.dart';
import 'package:ui_app/screens/components/devoice.info.dart';

class PhotosDetailsScreen extends StatelessWidget {
  final String url;
  final String title;
  final String description;
  const PhotosDetailsScreen({
    required this.url,
    required this.title,
    required this.description,
    super.key,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text('Details Screen',style: TextStyle(fontSize:width*0.05,fontWeight: FontWeight.bold,color: Colors.white))),
        backgroundColor: Colors.deepOrange,

      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: height*0.025,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.network(
                url,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,style: TextStyle(fontSize:width*0.05,fontWeight: FontWeight.bold ),),
                  Text(description,style: TextStyle(fontSize: width*0.025),),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
