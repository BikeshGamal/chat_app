import 'package:flutter/material.dart';
import 'package:mengobrol_app/features/profile/profile_details.dart';
import '../home/widgets/two_item_heading.dart';
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              TwoItemHeading(labelName: "Mengobrol",
                iconName: Icons.search,
                fontSize: 24.0,
                iconSize: 36.0,
                isMainHeading:true,
              ),
              SizedBox(height: 20,),
              Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              SizedBox(height: 20,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 34,
                    backgroundImage: AssetImage("assets/profile.png"),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Gamalgorithm",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("ID:Gamalgorithm2000",
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              ProfileDetails()
            ],
          ),
        ),
      ),
    );
  }
}
