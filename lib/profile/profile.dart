import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: Center(),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,size: 20,),
      actions: [
        Icon(Icons.more_horiz_outlined,color: Colors.black,),
        SizedBox(width: 20,)
      ],

    );
  }
}