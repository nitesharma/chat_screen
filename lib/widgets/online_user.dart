import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/material.dart';

class OnlineUser extends StatefulWidget {
  const OnlineUser({Key? key}) : super(key: key);

  @override
  _OnlineUserState createState() => _OnlineUserState();
}

class _OnlineUserState extends State<OnlineUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ONLINE",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '+ ADD FRIENDS',
                style: TextStyle(color: Colors.pink[200]),
              )
            ],
          ),
        ),
        Container(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: online.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Stack(children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(online[index].imgUrl),
                      ),
                      Positioned(
                          top: 50,
                          left: 5,
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.pink[200],
                            ),
                          ))
                    ])
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
