import 'package:flutter/material.dart';

class ShopListGridView extends StatelessWidget {
  AssetImage? image;
  String? name;
  String? price;
  String? sale;
  ShopListGridView({required this.image,required this.name,required this.price,required this.sale});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff262626),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: image!,fit: BoxFit.cover)
              ),
            ),
          ),
          Text(name!,style: const TextStyle(color: Colors.white),),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$"+"${price!}",style: const TextStyle(color: Colors.blue),),
                const Icon(Icons.favorite_border,size: 20,color: Colors.grey,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,size: 15,),
                    Icon(Icons.star,color: Colors.yellow,size: 15,),
                    Icon(Icons.star,color: Colors.yellow,size: 15,),
                    Icon(Icons.star,color: Colors.yellow,size: 15,),
                    Icon(Icons.star,size: 15,color: Colors.grey,),
                  ],
                ),
                Text("${sale!} Sales",style: const TextStyle(color: Colors.grey),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
