import 'package:coffeeshop/coffee_item_model.dart';
import 'package:coffeeshop/homepage/data/coffee_types_enum.dart';

final List<CoffeeItem> coffeeItems = [
  // --- ESPRESSO & BLACK COFFEE Types ---
  CoffeeItem(
    id: 'espresso_001',
    name: 'Espresso',
    description: 'A concentrated shot of rich coffee',
    price: 3.50,
    image: 'assets/images/espresso.png',
    type: CoffeeTypes.espresso.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'americano_001',
    name: 'Caffè Americano',
    description: 'Espresso diluted with hot water',
    price: 4.00,
    image: 'assets/images/americano.png',
    type: CoffeeTypes.americano.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'longblack_001',
    name: 'Long Black',
    description: 'Espresso poured over hot water',
    price: 4.25,
    image: 'assets/images/long_black.png',
    type: CoffeeTypes.americano.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'icedamericano_001',
    name: 'Iced Americano',
    description: 'Refreshing cold espresso with water',
    price: 4.50,
    image: 'assets/images/iced_americano.png',
    type: CoffeeTypes.americano.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'dripcoffee_001',
    name: 'Filter Coffee',
    description: 'Classic brewed black coffee',
    price: 3.00,
    image: 'assets/images/filter_coffee.png',
    type: CoffeeTypes.espresso.displayName, // ⭐ Using 'espresso' for simplicity, could be 'coffee'
  ),

  // --- CAPPUCCINO Types ---
  CoffeeItem(
    id: 'cappuccino_001',
    name: 'Cappuccino',
    description: 'Espresso with steamed milk and thick foam',
    price: 4.75,
    image: 'assets/images/cappuccino.png',
    type: CoffeeTypes.cappuccino.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'drycap_001',
    name: 'Dry Cappuccino',
    description: 'Less milk, more foam for a bolder taste',
    price: 4.75,
    image: 'assets/images/dry_cappuccino.png',
    type: CoffeeTypes.cappuccino.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'wetcap_001',
    name: 'Wet Cappuccino',
    description: 'More steamed milk, less foam, creamier',
    price: 4.75,
    image: 'assets/images/wet_cappuccino.png',
    type: CoffeeTypes.cappuccino.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'icedcap_001',
    name: 'Iced Cappuccino',
    description: 'Chilled cappuccino with frothy milk over ice',
    price: 5.00,
    image: 'assets/images/iced_cappuccino.png',
    type: CoffeeTypes.cappuccino.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'flavoredcap_001',
    name: 'Vanilla Cappuccino',
    description: 'Classic cappuccino with a hint of vanilla',
    price: 5.25,
    image: 'assets/images/vanilla_cappuccino.png',
    type: CoffeeTypes.cappuccino.displayName, // ⭐ Use the enum
  ),

  // --- LATTE Types ---
  CoffeeItem(
    id: 'latte_001',
    name: 'Caffè Latte',
    description: 'Espresso with plenty of steamed milk and thin foam',
    price: 4.75,
    image: 'assets/images/latte.png',
    type: CoffeeTypes.latte.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'caramellatte_001',
    name: 'Caramel Latte',
    description: 'Sweet latte with rich caramel drizzle',
    price: 5.50,
    image: 'assets/images/caramel_latte.png',
    type: CoffeeTypes.latte.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'mochalatte_001',
    name: 'Caffè Mocha',
    description: 'Chocolate-flavored latte with whipped cream',
    price: 5.75,
    image: 'assets/images/mocha.png',
    type: CoffeeTypes.latte.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'icedlatte_001',
    name: 'Iced Latte',
    description: 'Cold espresso with milk and ice',
    price: 5.00,
    image: 'assets/images/iced_latte.png',
    type: CoffeeTypes.latte.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'flatwhite_001',
    name: 'Flat White',
    description: 'Espresso with velvety microfoam milk',
    price: 5.00,
    image: 'assets/images/flat_white.png',
    type: CoffeeTypes.latte.displayName, // ⭐ Use the enum
  ),

  // --- TEA Types ---
  CoffeeItem(
    id: 'blacktea_001',
    name: 'Assam Black Tea',
    description: 'Strong, malty black tea',
    price: 3.00,
    image: 'assets/images/black_tea.png',
    type: CoffeeTypes.tea.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'greentea_001',
    name: 'Green Tea',
    description: 'Light and earthy, unoxidized tea',
    price: 3.00,
    image: 'assets/images/green_tea.png',
    type: CoffeeTypes.tea.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'earlgrey_001',
    name: 'Earl Grey Tea',
    description: 'Black tea infused with bergamot oil',
    price: 3.25,
    image: 'assets/images/earl_grey.png',
    type: CoffeeTypes.tea.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'chai_001',
    name: 'Masala Chai',
    description: 'Spiced black tea with milk and sugar',
    price: 4.00,
    image: 'assets/images/chai.png',
    type: CoffeeTypes.tea.displayName, // ⭐ Use the enum
  ),
  CoffeeItem(
    id: 'icedtea_001',
    name: 'Iced Lemon Tea',
    description: 'Refreshing chilled tea with lemon',
    price: 3.75,
    image: 'assets/images/iced_tea.png',
    type: CoffeeTypes.tea.displayName, // ⭐ Use the enum
  ),
];