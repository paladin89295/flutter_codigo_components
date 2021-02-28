
import 'package:flutter/material.dart';
import 'package:flutter_codigo_components/constants.dart';
import 'package:flutter_codigo_components/main.dart';
import 'package:flutter_codigo_components/pages/alerts_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset("assets/images/polo1.jfif",
                    width: 400),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("COMPONENTS1000",
                  style: kTitlePageTextStyle,),
                ),
                ItemMenuWidget(
                  title: "Alertas",
                  subtitle: "Aquí irá el módulo de alertas",
                  icon:Icons.notifications,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AlertPage()));
                  },
                ),
                ItemMenuWidget(
                  title: "Avatars",
                  subtitle: "Aquí irá el módulo de alertas",
                  icon:Icons.person,
                  onTap: (){
                    print("Presionaste el avatar");
                  },
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemMenuWidget extends StatelessWidget {

  final String title;
  final String subtitle;
  final IconData icon;
  final Function onTap;

  const ItemMenuWidget({this.title, this.subtitle, this.icon, this.onTap}) ;



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration:BoxDecoration(
        color:Colors.black38,
        borderRadius: BorderRadius.circular(12.0)
      ) ,
      child: ListTile(
        onTap: onTap,
        title:Text(title,
          style: TextStyle(
            fontSize:18.0
          ),
        ),
        subtitle: Text(subtitle,style: TextStyle(
            fontSize:14.0
        )),
        trailing: Icon(Icons.chevron_right),
        leading: Icon(icon,size: 28.0,),
      ),
    );
  }
}
