import 'package:flutter/material.dart';
import '../home/widgets/two_item_heading.dart';
import 'contact_list.dart';
class NewChats extends StatelessWidget {
   NewChats({Key? key}) : super(key: key);
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
              Text("Contact",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              SizedBox(height: 20,),
              ContactList(),
            ],
          ),
        ),
      ),
    );
  }
}
