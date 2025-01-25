import 'package:flutter/material.dart';
import 'package:ui_app/screens/photos_details_screen.dart';

import 'components/devoice.info.dart';

class ShotsScreen extends StatefulWidget {
  const ShotsScreen({super.key});

  @override
  State<ShotsScreen> createState() => _ShotsScreenState();
}

class _ShotsScreenState extends State<ShotsScreen> {
  final List<Map<String, String>> _posts = [
  {
    'url': 'https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-600nw-2212935531.jpg',
    'title': 'Sunset by the Sea',
    'description': 'A breathtaking sunset view by the calm ocean waves'
},
{

    'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW-qEu-C1_OqplvEV-hTciHsfB5hFkCNzp8ewH_ko819imOrKwLU-fkXqS0f3SKOF1Hno&usqp=CAU',
    'title':'Waterfall',
    'description':'A stunning waterfall in the middle of a forest during autumn.',
},
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFU7U2h0umyF0P6E_yhTX45sGgPEQAbGaJ4g&s',
      'title':'What is special about a panda',
      'description':'The two main unique features of pandas compared to other bears are their diet and the presence of a thumb-like appendage, which helps them grip stalks of bamboo',
    },
{
'url':'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
'title': 'flower benifits',
'description':' a specialized plant part that occurs singly or in clusters, possesses often colorful petals or sepals, and bears reproductive organs involved in the development of seeds and fruit',
    },
{
'url':'https://www.shutterstock.com/image-photo/beach-seat-laptop-wallpepar-hd-260nw-2498994455.jpg',
'title':'Man using laptop on beach',
'description':'Man using laptop on beach'

},
    {
      'url':'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
      'title':'Bird on tree',
      'description':'Birds use trees for many activities, including nesting, roosting, foraging, and migrating'

    },
    {
      'url':'https://imagekit.io/blog/content/images/2019/12/image-optimization.jpg',
      'title':'Laptop',
      'description':'A laptop is a portable computer that can be easily carried around and used in different locations.'

    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
           Padding(
             padding: const EdgeInsets.all(10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Icon(Icons.arrow_back),
                 Text('Shots',style: TextStyle(fontSize:width*0.025,fontWeight: FontWeight.bold)),
                 Icon(Icons.logout),
               ],
             ),
           ),
            Expanded(
                child: ListView.builder(
                  itemCount: _posts.length,
                    itemBuilder: (context ,index){
                    final post = _posts[index];
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotosDetailsScreen(
                          url : post['url']!,
                          title:post['title']!,
                          description : post['description']!,

                        ),

                        ),

                        );



                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 3)
                              )
                            ]
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              post['url']!,
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                      // return Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal:10,vertical: 5),
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       color: Colors.grey.withOpacity(0.5),
                      //       boxShadow: [
                      //         BoxShadow(
                      //           color: Colors.grey.withOpacity(0.5),
                      //           spreadRadius: 1,
                      //           blurRadius: 5,
                      //           offset: Offset(0, 3)
                      //         )
                      //       ]
                      //     ),
                      //     child: ClipRRect(
                      //       borderRadius: BorderRadius.circular(10),
                      //       child: Image.network(
                      //         _posts[index],
                      //         height:height*0.2,
                      //         width: double.infinity,
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                      // );
                    }))

          ],
        ),
      ),
    );
  }
}
