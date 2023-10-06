import 'package:flutter/material.dart';
class ContactList extends StatelessWidget {
   ContactList({Key? key}) : super(key: key);
  List chatImage=["image24.jpg","image23.jpg","image22.jpg","image21.jpg","image20.jpg",
    "image19.jpg","image18.jpg","image17.jpg","image16.jpg","image15.jpg",
    "image14.jpg","image13.jpg","image12.jpg","image11.jpg","image10.jpg","image9.jpg",
    "image8.jpg","image7.jpg","image6.jpg","image5.jpg","image4.jpg","image3.jpg",
    "image2.jpg","image1.jpg"
  ];
  List chatName=["Dr.Ram Yadav","Vipul Ranabhat","Subin Mandal","Gaurav Rajak","Raj Shah",
    "Ganesh Joshi","Hari Sharma","Jiwan Jaiswal","Narendra Shah","Varat Khan","Habin Tuladhar","Alica Gomej",
    "Aliza Trump","Ragan Yadav","Sajan Banaita","Rock Mahato","Jack Shah","Birat Alam","Reman Arya",
    "Joh Shah","Nolan Jha","Rogar Sharma","criag Shon","Terry Jogh",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: chatImage.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context,index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage("assets/${chatImage[index]}"),
          ),
          SizedBox(width: 20,),
             Text("${chatName[index]}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14
              ),
            ),
        ],
      ),
    );
        }
    );
  }
}
