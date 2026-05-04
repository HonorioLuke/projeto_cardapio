class MenuItem {
  final String
  name;
  final String
  description;
  final double
  price;
  final String
  emoji;
  final bool
  isPopular;

  const MenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.emoji,
    this.isPopular =
        false,
  });

  /// Formats price as Brazilian currency string, e.g. "R$ 32,90"
  String
  get formattedPrice =>
      'R\$ ${price.toStringAsFixed(2).replaceAll('.', ',')}';
}
