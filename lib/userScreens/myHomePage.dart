import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:vendu/userScreens/itemdetails.dart';
import 'package:vendu/userScreens/store.dart';
// import 'package:vendu/userScreens/admin_home.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: GestureDetector(
            onLongPress: openAdmin,
            child: Text('vendu'),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.favorite), onPressed: null)
          ]),
      body: Center(
        child: Column(children: <Widget>[
          Flexible(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: storeItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    // return Card(
                    //     child: Stack(
                    //   alignment: FractionalOffset.topLeft,
                    //   children: <Widget>[
                    //     Stack(
                    //         alignment: FractionalOffset.bottomCenter,
                    //         children: <Widget>[
                    //           Container(
                    //             decoration: BoxDecoration(
                    //                 image: DecorationImage(
                    //                     fit: BoxFit.fitWidth,
                    //                     image: NetworkImage(
                    //                         storeItems[index].itemImage))),
                    //           ),
                    //           Container(
                    //             height: 35.0,
                    //             color: Colors.black.withAlpha(100),
                    //             child: Padding(
                    //                 padding: const EdgeInsets.all(8.0),
                    return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ItemDetail(
                                    itemImage: storeItems[index].itemImage,
                                    itemName: storeItems[index].itemName,
                                    itemPrice: storeItems[index].itemPrice,
                                  )));
                        },
                        child: Card(
                            child: Stack(
                          alignment: FractionalOffset.topLeft,
                          children: <Widget>[
                            Stack(
                                alignment: FractionalOffset.bottomCenter,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fitWidth,
                                            image: NetworkImage(
                                                storeItems[index].itemImage))),
                                  ),
                                  Container(
                                    height: 35.0,
                                    color: Colors.black.withAlpha(100),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "${storeItems[index].itemName.substring(0, 8)}...",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16.0,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "N${storeItems[index].itemPrice}",
                                              style: new TextStyle(
                                                  color: Colors.red[500],
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        )),
                                  )
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 30.0,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[],
                                  ),
                                )
                              ],
                            )
                          ],
                        )));
                  }))
        ]),
      ),
    );
  }

  openAdmin() {
    // Navigator.of(context).push(new MaterialPageRoute(
    //     builder: (BuildContext context) => new AdminHome()));
  }
}
