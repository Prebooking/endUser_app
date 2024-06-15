import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HPopularCard extends StatelessWidget {
  const HPopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.amber),
          
          
          child: Stack(
          children: [
                 //  Image.asset("assets/hotel.png",fit: BoxFit.fill,),
                    
            Padding(
              padding: EdgeInsets.only(left: 14,right: 14,top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
       //   SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 5,),
              Container(width: 59,
              height: 35,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),
              child: Row(
                children: [
                  SizedBox(width: 4,),
                  Icon(Icons.star,color: Colors.yellow.shade700,),
                  SizedBox(width: 2,),
                  Text("4.9",style: TextStyle(fontSize: 14,color: Colors.grey.shade800),)
            
                ],
              ),
              
              
              ),
              Expanded(child: Container()),
              SizedBox(
                width: 40,
                height: 40,
                child: CircleAvatar(child: Icon(Icons.favorite,color: Colors.yellow.shade800,),backgroundColor: Colors.grey.shade400,)),
           SizedBox(width: 5,)
            ],
          ),
            
          Expanded(child: Container()),
          Text("RAZI ARABIA",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w800),),
          SizedBox(height: 3,),
          Text("Non-veg.Arabian.Drinks",style: TextStyle(color: Colors.white,fontSize: 15),),
           SizedBox(height: 4,),
          Text("Kalarcode,Alappuzha,Near Alappuzha Bypass",style: TextStyle(color: Colors.white,fontSize: 10),),
                SizedBox(height: 12)
                ],
              ),
            )
          ],
                )
    );
  }
}
