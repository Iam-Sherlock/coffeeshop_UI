enum CoffeeTypes {
  espresso('Espresso'),
  cappuccino('Cappuccino'),
  latte('Latte'),
  americano('Americano'),
  tea('Tea');
  const CoffeeTypes(this.displayName);
  final String displayName;
}
