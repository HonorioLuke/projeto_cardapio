import '../models/menu_category.dart';
import '../models/menu_item.dart';

abstract final class MenuRepository {
  static const List<
    MenuCategory
  >
  categories = [
    MenuCategory(
      name: 'Entradas',
      icon: '🍤',
      items: [
        MenuItem(
          name: 'Casquinha de Siri',
          description: 'Casquinha recheada com siri temperado, gratinada com queijo e farofa.',
          price: 32.90,
          emoji: '🦀',
          isPopular: true,
        ),
        MenuItem(
          name: 'Bolinho de Bacalhau',
          description: 'Bolinhos crocantes de bacalhau com ervas finas. Porção com 8 unidades.',
          price: 28.90,
          emoji: '🐟',
        ),
        MenuItem(
          name: 'Camarão na Moranga',
          description: 'Camarões salteados servidos dentro de moranga assada com molho cremoso.',
          price: 45.00,
          emoji: '🦐',
          isPopular: true,
        ),
        MenuItem(
          name: 'Ostras Frescas',
          description: 'Meia dúzia de ostras frescas servidas com limão e molho mignonette.',
          price: 38.00,
          emoji: '🦪',
        ),
        MenuItem(
          name: 'Peixe Frito',
          description: 'Filé de peixe empanado, crocante por fora e suculento por dentro. Acompanha molho tártaro.',
          price: 24.90,
          emoji: '🐠',
        ),
      ],
    ),
    MenuCategory(
      name: 'Pratos Principais',
      icon: '🍽️',
      items: [
        MenuItem(
          name: 'Moqueca de Camarão',
          description: 'Moqueca cearense com camarões frescos, leite de coco, pimentões e coentro. Acompanha arroz e pirão.',
          price: 89.90,
          emoji: '🦐',
          isPopular: true,
        ),
        MenuItem(
          name: 'Lagosta Grelhada',
          description: 'Lagosta inteira grelhada na manteiga de ervas, servida com arroz de coco e salada.',
          price: 189.00,
          emoji: '🦞',
          isPopular: true,
        ),
        MenuItem(
          name: 'Filé de Pargo ao Molho',
          description: 'Filé de pargo fresco grelhado com molho de camarões e tomate. Acompanha batata sauté.',
          price: 72.00,
          emoji: '🐡',
        ),
        MenuItem(
          name: 'Caldeirada de Frutos do Mar',
          description: 'Mistura de peixes, camarões, mariscos e polvo em caldo encorpado. Serve 2 pessoas.',
          price: 115.00,
          emoji: '🍲',
        ),
        MenuItem(
          name: 'Peixe Assado na Brasa',
          description: 'Peixe inteiro assado na brasa com ervas e limão. Acompanha macaxeira frita e arroz.',
          price: 79.90,
          emoji: '🔥',
        ),
        MenuItem(
          name: 'Arroz de Polvo',
          description: 'Arroz cremoso com polvo grelhado, azeitonas e pimentão vermelho.',
          price: 68.00,
          emoji: '🐙',
        ),
      ],
    ),
    MenuCategory(
      name: 'Bebidas',
      icon: '🥤',
      items: [
        MenuItem(
          name: 'Água de Coco Natural',
          description: 'Coco verde gelado, tirado na hora.',
          price: 12.00,
          emoji: '🥥',
          isPopular: true,
        ),
        MenuItem(
          name: 'Suco de Caju',
          description: 'Suco natural de caju cearense, sem açúcar ou adoçado a gosto.',
          price: 14.00,
          emoji: '🧃',
        ),
        MenuItem(
          name: 'Limonada Suíça',
          description: 'Limonada cremosa com leite condensado e hortelã.',
          price: 16.00,
          emoji: '🍋',
        ),
        MenuItem(
          name: 'Cerveja Artesanal',
          description: 'Long neck gelada. Pergunte as opções disponíveis hoje.',
          price: 18.00,
          emoji: '🍺',
        ),
        MenuItem(
          name: 'Caipirinha de Tamarindo',
          description: 'Caipirinha da casa com tamarindo e cachaça artesanal cearense.',
          price: 22.00,
          emoji: '🍹',
          isPopular: true,
        ),
        MenuItem(
          name: 'Refrigerante',
          description: 'Lata gelada. Coca-Cola, Guaraná, Sprite ou Fanta.',
          price: 8.00,
          emoji: '🥤',
        ),
      ],
    ),
  ];
}
