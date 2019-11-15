import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  Future<Null>getRefresh()async{

    await Future.delayed(Duration(seconds: 3));

  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        title: Text("Flutter Slidable"),
        backgroundColor: Colors.amber,
      ),

      body: RefreshIndicator(
        onRefresh: getRefresh,
        backgroundColor: Colors.amberAccent,
        color: Colors.green,
        child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return Slidable(
                actionPane: SlidableBehindActionPane(),
                key: ValueKey(index),
                actions: <Widget>[
                  IconSlideAction(
                    caption: 'Archive',
                    color: Colors.amber,
                    icon: Icons.archive,
                  ),
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.deepOrange,
                    icon: Icons.share,
                  ),
                ],

                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'More',
                    color: Colors.deepPurple,
                    icon: Icons.more_horiz,

                  ),
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,

                  ),
                ],

                dismissal: SlidableDismissal(
                  child: SlidableDrawerDismissal(),
                ),

                child: Container(
                  padding: EdgeInsets.all(30.0),
                  child: Text("Item Data$index"),
                ),

              );
            }
        ),
      ),


    );
  }
}
