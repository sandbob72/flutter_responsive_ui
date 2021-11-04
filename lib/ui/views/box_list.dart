import 'package:flutter/material.dart';
// import 'package:wang_shipping_new/provider/user.provider.dart';
// import 'package:provider/provider.dart';

class BoxListPage extends StatefulWidget {
  const BoxListPage({Key? key}) : super(key: key);

  @override
  _BoxListPageState createState() {
    return _BoxListPageState();
  }
}

class _BoxListPageState extends State<BoxListPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: false,
        title: const Text(
          'Box List',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            icon: Stack(
              children: const <Widget>[
                Icon(Icons.close, size: 30, color: Colors.white),
              ],
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      //resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade100,
      body: Builder(
        builder: (context) {
          return Column(
            children: <Widget>[
              Expanded(
                  child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate([
                      createShippingList(),
                    ]),
                  )
                ],
              ))
              //footer(context)
            ],
          );
        },
      ),
    );
  }

  createSubTitle() {
    return Container(
      alignment: Alignment.topLeft,
      child: Row(
        children: const [
          Text(
            "รายการส่งสินค้าในอ.หาดใหญ่",
            style: TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      margin: const EdgeInsets.only(left: 12, top: 4),
    );
  }

  createShippingList() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createShippingListItem(position);
      },
      itemCount: 5,
    );
  }

  createShippingListItem(int index) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: <Widget>[
          Container(
            margin:
                const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              right: 8, left: 8, top: 8, bottom: 8),
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              color: Colors.blueGrey,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Cardboard_Box.png"),
                                  fit: BoxFit.cover)),
                        ),
                        const Text(
                          'ลัง',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.blueAccent),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 250,
                                  padding:
                                      const EdgeInsets.only(right: 8, top: 4),
                                  child: Text(
                                    "ชุดที่ ${index + 1}",
                                    style: const TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                    overflow: TextOverflow.ellipsis, //ชื่อไทย
                                    maxLines: 1,
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Container(
                              padding: const EdgeInsets.only(right: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      const Text(
                                        "สถานะ :",
                                      ),
                                      const SizedBox(width: 3),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 20.0,
                                        padding: const EdgeInsets.only(
                                            left: 9, right: 9),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(80.0),
                                            gradient:
                                                const LinearGradient(colors: [
                                              Color.fromARGB(255, 255, 136, 34),
                                              Color.fromARGB(255, 255, 177, 41)
                                            ])),
                                        child: const Text(
                                          'ตรวจสอบ',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Text("พิมพ์สติ๊กเกอร์ : 2021-11-03 08.00.00"),
                            const Text(
                              'พนักงานนำส่ง : 0635',
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'พนักงานที่ตรวจสินค้า : 0635',
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'พนักงานที่แพ็คสินค้า : 0635',
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      flex: 100,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
