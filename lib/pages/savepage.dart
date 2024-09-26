import 'package:flutter/material.dart';
import 'package:jobhunt/constant/google.dart';
import 'package:jobhunt/data/detail.dart';
import 'package:jobhunt/pages/recdetail.dart';


class SavedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Job List'),
        elevation: 4,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: savedItems.length,
        itemBuilder: (context, index) {
          return Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: index % 2 == 0 ? Colors.grey[200] : Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: primaryColor,
                        backgroundImage: AssetImage("${allRecomended[index].imgUrl}"),
                      ),
                      SizedBox(width: 20,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${savedItems[index].company}"),
                          Text("${savedItems[index].jobTitle}"),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 70,),
                      Expanded(
                        child: Text(
                          "${allRecomended[index].description}",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>detail(recomendedModel: allRecomended[index])));
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 60),
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey,
                          ),
                          child: Center(child: Text("Apply", style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  )
                ],
              )
          );
        },
      ),
    );
  }
}