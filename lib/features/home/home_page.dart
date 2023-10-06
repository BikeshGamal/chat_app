import 'package:flutter/material.dart';
import 'package:mengobrol_app/features/home/widgets/active_members.dart';
import 'package:mengobrol_app/features/home/widgets/members_list.dart';
import 'package:mengobrol_app/features/home/widgets/two_item_heading.dart';
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:SingleChildScrollView(
            child: Column(
              children: [
                TwoItemHeading(labelName: "Mengobrol",
                  iconName: Icons.search,
                  fontSize: 24.0,
                  iconSize: 36.0,
                  isMainHeading:true,
                ),
                SizedBox(height: 20,),
                ActiveMember(),
                SizedBox(height: 10,),
                TwoItemHeading(
                  labelName:"Chats",
                  iconName:Icons.more_horiz,
                  fontSize: 18.0,
                  iconSize: 28.0,
                  isMainHeading:false
                ),
                SizedBox(height: 10,),
                Container(
                    height: MediaQuery.of(context).size.height * 0.70,
                    child: MemberList()),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
