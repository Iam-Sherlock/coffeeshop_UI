import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailPage extends StatefulWidget {
  final itemid;
  const DetailPage({required this.itemid, super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            context.pop();
          },
        ),
        centerTitle: true,
        title: Text("Detail"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isFavourite = !isFavourite;
                });
              },
              icon: (!isFavourite)
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    )
                  : Icon(Icons.favorite_border_rounded))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 8),
            child: Container(
              height: 250,
              width: double.infinity,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/coffeeDetail.png'), // Your image asset
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
            ),
          ),
          Text(widget.itemid,style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),),
          Text(
            ""
          ),
        ],
      ),
    );
  }
}
