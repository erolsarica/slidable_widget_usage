import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                  onPressed: ((context){
                    //ara
              }),
                backgroundColor: Colors.green,
                icon: Icons.phone,

              ),
              SlidableAction(
                flex: 2, // arama ikonunun iki katı büyüklüğe çıkarıyor
                onPressed: ((context){
                  //mesaj at
                }),
                backgroundColor: Colors.blue,
                icon: Icons.chat,

              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context){
                  //ara
                }),
                backgroundColor: Colors.red,
                icon: Icons.delete,

              ),
            ],
          ),
          child: Container(
            color: Colors.grey[300],
            child: ListTile(
              title: Text('Erol SARICA'),
              subtitle: Text('01234567890'),
              leading: Icon(Icons.person,size:40,),
              trailing: Icon(Icons.favorite_rounded),
            ),

          ),
        ),
      ),
    );
  }
}
