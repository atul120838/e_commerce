import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/services/database.dart';
import 'package:e_commerce/widget/support_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Allorders extends StatefulWidget {
  const Allorders({super.key});

  @override
  State<Allorders> createState() => _AllordersState();
}

class _AllordersState extends State<Allorders> {
  Stream? orderStream;

  getontheload() async {
    orderStream = await DatabaseMethod().allOrders();
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Widget allOrders() {
    return StreamBuilder(
        stream: orderStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];

                    return Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          padding:
                              EdgeInsets.only(left: 20, top: 10, bottom: 10),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                ds["Image"],
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name : " + ds["Name"],
                                      style: AppWidget.semiboldTextFeildStyle(),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Text(
                                        "Email : " + ds["Email"],
                                        style: AppWidget.lightTextFeildStyle(),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      ds["Product"],
                                      style: AppWidget.semiboldTextFeildStyle(),
                                    ),
                                    Text("\$" + ds["Price"],
                                        style: TextStyle(
                                            color: Color(0xFFfd6f3e),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        await DatabaseMethod()
                                            .updateStatus(ds.id);
                                        setState(() {});
                                      },
                                      child: Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFfd6f3e),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text(
                                          "Done",
                                          style: AppWidget
                                              .semiboldTextFeildStyle(),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  })
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Orders",
          style: AppWidget.boldTextFeildStyle(),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [Expanded(child: allOrders())],
        ),
      ),
    );
  }
}
