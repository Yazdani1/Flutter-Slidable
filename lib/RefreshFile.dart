import 'package:flutter/material.dart';

class RefreshIndifcator extends StatefulWidget {
  @override
  _RefreshIndifcatorState createState() => new _RefreshIndifcatorState();
}

class _RefreshIndifcatorState extends State<RefreshIndifcator> {

  Future<Null> getRefresh() async {
    await Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        title: Text("Learning Refresh Indicator"),
        backgroundColor: Colors.green,
      ),

      body: RefreshIndicator(
        onRefresh: getRefresh,
        backgroundColor: Colors.green,
        color: Colors.black,
        child: ListView.builder(
            itemCount: 500,
            itemBuilder: (context, index) {

              return Card(
                margin: EdgeInsets.all(10.0),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
                ),
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Item Text$index"),
                ),
              );

            }
        ),
      ),

    );
  }
}


