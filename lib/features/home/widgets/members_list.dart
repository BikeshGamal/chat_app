import 'package:flutter/material.dart';
class MemberList extends StatelessWidget {
   MemberList({Key? key}) : super(key: key);
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
  List message=["Please help me to find a good monitor","Gacor Paisan Kang","Bima:No one can come today?",
    "You are now an admin","How are you?","Do check your mail","What?","That's good","Really?","Hi","all good","nice",
    "?????","Thanks","Price?","Awesome","Congratulations","Good one","Well","Working","All the best","Great",
    "Enjoy","Good luck"
  ];
  List time=["02:11","03:11","04:11","04:07","06:11","09:11",
    "03:12","04:34","12:45","12:33","09:09","07:55",
    "11:05","11:07","12:25","12:34","10:12","06:17",
    "02:07","09:15","10:18","11:12","11:22","12:09"
  ];
  List chatNumber=[2,0,2,1,0,0,2,1,2,3,3,2,1,1,1,1,1,1,1,1,1,1,1,1];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: chatImage.length,
      // physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context,index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            children: [
              Expanded(child:
              CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage("assets/${chatImage[index]}"),
              ),flex: 2,),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${chatName[index]}",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 6,),
                    chatNumber[index]!=0?
                    Text("${message[index]}",
                    maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      overflow: TextOverflow.ellipsis,
                    ):
                    Text("${message[index]}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),flex: 6,
              ),
              SizedBox(width: 4,),
              Expanded(child:
              Column(
                children: [
                  Text("${time[index]}",style: TextStyle(
                    color: Colors.black54
                  ),),
                  SizedBox(height: 6,),
                  chatNumber[index]!=0?
                  CircleAvatar(
                    radius: 10,
                    child:
                  Text("${chatNumber[index]}",style: TextStyle(
                    color: Colors.black54
                  ),),
                    backgroundColor: Colors.yellow.shade700,
                  ):
                      Text(""),
                ],
              ),flex: 1,),

            ],
          ),
        );
      }
    );
  }
}
