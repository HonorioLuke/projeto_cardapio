import 'menu_item.dart';

class MenuCategory {
  final String
  name;
  final String
  icon;
  final List<
    MenuItem
  >
  items;

  const MenuCategory({
    required this.name,
    required this.icon,
    required this.items,
  });
}
