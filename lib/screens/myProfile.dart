import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile',),
        backgroundColor: Colors.brown[300],
      ),
      key: scaffoldKey,
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(25),
          child: ListView(
            children: [

              Row(
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                          child: Image.asset('assets/images/Profile Picture.png',
                          fit: BoxFit.cover,
                          ),),

                  ),
                  Expanded(child: ListTile(
                    title: Text('Nada Ehab',),
                    subtitle: Text('nehab7947@gmail.com',),
                  ),),
                ],
              ),

              ListTile(
                leading:Icon(Icons.home) ,
                title: Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading:Icon(Icons.account_box) ,
                title: Text('Account'),
                onTap: () {},
              ),
              ListTile(
                leading:Icon(Icons.check_box) ,
                title: Text('Order'),
                onTap: () {},
              ),
              ListTile(
                leading:Icon(Icons.help) ,
                title: Text('About Us'),
                onTap: () {},
              ),
              ListTile(
                leading:Icon(Icons.phone_android_outlined) ,
                title: Text('Contact Us'),
                onTap: () {},
              ),
              ListTile(
                leading:Icon(Icons.exit_to_app) ,
                title: Text('SignOut'),
                onTap: () {},
              ),

            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [

          ],
        ),
      ),

    );
  }
}
