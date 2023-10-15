import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui_using_refactoring_widget/gridStructure_refactor.dart';
import 'package:flutter_assignment_ui_using_refactoring_widget/dummyData.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff262626),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Recomended"),
        leadingWidth: 40,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 15,
              )),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.filter_alt,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio:0.7,crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          children: List.generate(6, (index) =>ShopListGridView(image: AssetImage(shopList[index]['image']), name: shopList[index]['name'], price: shopList[index]['price'], sale: shopList[index]['sale'])),),
        ),
      ),
    );
  }
}
