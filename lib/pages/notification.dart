import 'package:flutter/material.dart';
import 'package:jobhunt/data/detail.dart';


class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        elevation: 4,
      ),
      body: ListView.builder(
          itemCount: allNotifications.length,
          shrinkWrap: true,
          itemBuilder: (context, index){
            return  Card(
              child: Padding(
                padding:  EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${allNotifications[index].title}",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text("${allNotifications[index].message}"),
                    SizedBox(height: 8),
                    Text(
                      "${allNotifications[index].timestamp}",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
