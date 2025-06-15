import 'package:coffeeshop/homepage/data/coffee_item_data.dart';
import 'package:coffeeshop/homepage/data/coffee_types_enum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'coffee_item_model.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  String? _selectedCoffeeType;
  List<CoffeeItem> coffeeTypes = coffeeItems;

  @override
  void initState() {
    _selectedCoffeeType = coffeeTypes.first.type;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final itemToBeDisplayed = _selectedCoffeeType == null 
    ?coffeeTypes
        :coffeeTypes.where((item) => item.type == _selectedCoffeeType).toList();
    print(" item displaying == ${itemToBeDisplayed.toList()}");

    return Stack(children: [
      Positioned(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.topCenter,
                color: Colors.black,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
                  child: Column(
                    children: [
                      /// Location dropdown and Profile icon
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Location',
                                    style: TextStyle(
                                        color: Color(
                                          0xFFA9A9A9,
                                        ),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.white,
                                    size: 16,
                                  )
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                'hdghgd',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.account_circle_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),

                      /// Search Coffee Field
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.filter_alt_outlined),
                          prefixIcon: const Icon(Icons.search_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                12.0), // Example: 10.0 for a circular radius
                          ),
                        ),
                      ),
                      const SizedBox(height: 60),
                    ],
                  ),
                ),
              ),
            ),
            const Expanded(
              flex: 4,
              child: SizedBox(),
            ),
          ],
        ),
      ),
      Positioned(
        top: 150,
        right: 5,
        left: 5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SizedBox(
                // height: ,
                // width: double.infinity,
                child: Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15.0), // Rounded corners for the card
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/coffeeCardWide.png'), // Your image asset
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 80, top: 16, bottom: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: const Color(0xFFED5151),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('Promo',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          letterSpacing: 0)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("Buy one get one FREE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 32,
                                  letterSpacing: 0,
                                  backgroundColor: Colors.black,
                                )),
                          ],
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
      Positioned(
          top: 340,
          right: 5,
          left: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              // color: Colors.green,
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: CoffeeTypes.values.length,
                  // shrinkWrap: true,
                  padding: const EdgeInsets.only(
                      left: 35.0, right: 20.0), //thadukave mudiyadhu
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ChoiceChip(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: const BorderSide(color: Colors.transparent)),
                        backgroundColor: const Color(0xFFFFFFFF),
                        label: Text(CoffeeTypes.values[index].displayName,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1)),
                        selected: _selectedCoffeeType == CoffeeTypes.values[index].displayName,
                        selectedColor: const Color(0xFFC67C4E),
                        onSelected: (bool selected) {
                          setState(() {
                            if (selected) {
                              print('before $_selectedCoffeeType');
                              _selectedCoffeeType = CoffeeTypes.values[index].displayName;
                              print(
                                  '$selected == $_selectedCoffeeType, ${CoffeeTypes.values[index].displayName}');
                            } else {
                              print("nothing");
                              _selectedCoffeeType = null;
                            }
                          });
                        },
                      ),
                    );
                  }),
            ),
          )),
      Positioned(
          top: 400,
          right: 10,
          left: 10,
          child: Container(
            height: 400,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 45,
                  mainAxisExtent: 250,
                ),
                padding: const EdgeInsets.all(12.0),
                itemCount: itemToBeDisplayed.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Card(
                      color: Color(0xFFFFFFFF),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: const EdgeInsets.only(
                                  top: 4, bottom: 12, left: 4, right: 4),
                              child: Image(
                                image:
                                    AssetImage('assets/images/coffeeGrid2.png'),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                itemToBeDisplayed[index].name,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFF2F2D2C),
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                itemToBeDisplayed[index].description,
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xFF9B9B9B),
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "\$${itemToBeDisplayed[index].price}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      color: Color(0xFF9B9B9B),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {}, icon: const Icon(Icons.add_box))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      context.go('/home/${itemToBeDisplayed[index].name}');
                    },
                  );
                }),
          ))
    ]);
  }
}
