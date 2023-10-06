import 'package:flutter/material.dart';
class ProfileDetails extends StatelessWidget {
   ProfileDetails({Key? key}) : super(key: key);
  List menuList=["Account","Chat","Notification","Privacy","Help","About","Logout"];
  List iconName=[Icons.account_circle_outlined,
    Icons.message,
    Icons.notification_important,
    Icons.privacy_tip,
    Icons.help,
    Icons.person,
    Icons.logout
  ];
  List bColor=[Colors.blue,Colors.red,
    Colors.orange,Colors.yellow,
  Colors.purple,
    Colors.pink,
    Colors.green
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: menuList.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                CircleAvatar(
                  radius: 28,
                  backgroundColor: bColor[index],
                  child: Icon(iconName[index]),

                ),
                SizedBox(width: 20,),
                Text("${menuList[index]}",
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
