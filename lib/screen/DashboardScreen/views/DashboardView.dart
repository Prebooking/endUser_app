import 'package:flutter/material.dart';
import 'package:pre_booking/screen/DashboardScreen/views/HPopularCard.dart';

class DashboardView extends StatelessWidget {
   DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SingleChildScrollView(
          child: Padding(
           padding: EdgeInsets.only(left: 15,top: 22,right: 15),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.start,
               children: [
                SizedBox(height: 8,),
                Row(
                  children: [
                    Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello  Sabari 👋  ",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),),
                         Text("Find Restrauants near you",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w800),),
                      ],
                    ),
                    Expanded(child: Container()),
                    Icon(Icons.notifications,color: Colors.red.shade300,),
                  ],
                ),
           SizedBox(height: 30,),
                SizedBox(
                  width: 352,
                  height: 55,
                  child: TextFormField(
                  decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(26),borderSide: BorderSide(color: Colors.black))
                
                  ),
                    
                  ),
                ),
                SizedBox(height: 50,),
                SizedBox(
                  width: 352,
                  height: 100,
                  child: Image.asset("assets/table.png"),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                           Text("Most Popular",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w800),),
                     Expanded(child: Container()) ,
                      Text("See All ",style: TextStyle(color: Colors.yellow.shade700,fontSize: 15,fontWeight: FontWeight.w800),),
                       
                  ],
                
                ),
                SizedBox(height: 15,),
                Container(width: 291,
                height: 287,
                child: HPopularCard(),),
                 SizedBox(height: 15,),
                 SizedBox(
                  width: 352,
                  height: 100,
                  child: Image.asset("assets/table.png"),
                ),
              ],
            ),
          ),
        ),));
  }
}
