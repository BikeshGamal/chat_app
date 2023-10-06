import 'package:flutter/material.dart';
class ActiveMember extends StatelessWidget {
  ActiveMember({Key? key}) : super(key: key);
  List images=['image1.jpg','image2.jpg','image3.jpg',
    'image4.jpg','image5.jpg','image6.jpg',
    'image7.jpg','image8.jpg','image9.jpg','image10.jpg','image11.jpg'];
  List friendName=["Terry","Criag","Rogar","Nolan","Joh","Reman",'Birat','Jack','Rock','Sajan',"Ragan"];
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: friendName.length,
          itemBuilder: (context,index)
          {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage("assets/${images[index]}"),
                  ),
                  SizedBox(height: 8,),
                  Text(friendName[index])
                ],
              ),
            );
          }
      ),
    );
  }
}
