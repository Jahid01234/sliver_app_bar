import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [


            // The 1st part
            SliverAppBar(
              backgroundColor: Colors.cyan,
              pinned: true,
              expandedHeight: 250,
              leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.white,),
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Home",style: TextStyle(color: Colors.white),),
                background: Image.network("https://blog.vantagecircle.com/content/images/size/w1000/2020/08/Employee-Onboarding.png",fit: BoxFit.fill,),
              ),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.home),color: Colors.white,),
                IconButton(onPressed: (){}, icon: Icon(Icons.person),color: Colors.white,)
              ],

            ),



            // The 2nd part
            SliverList(
                delegate: SliverChildBuilderDelegate((context,index)
                {
                  return ListTile(
                    leading: CircleAvatar(child: Text("$index")),
                    title: Text("Md. Jahid Hasan"),
                    subtitle: Text("Bangladesh") ,
                    trailing:Icon(Icons.add_alert),
                  );
                 },
                    childCount:50
                ),
            ),


          ],
        ),
      ),
    );
  }
}
