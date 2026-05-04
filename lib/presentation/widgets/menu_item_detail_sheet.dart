import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../data/models/menu_item.dart';

class MenuItemDetailSheet
    extends
        StatelessWidget {
  final MenuItem
  item;

  const MenuItemDetailSheet({
    super.key,
    required this.item,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Container(
      margin: const EdgeInsets.all(
        16,
      ),
      padding: const EdgeInsets.all(
        24,
      ),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(
          28,
        ),
        border: Border.all(
          color: AppColors.secondary.withValues(
            alpha: 0.2,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _SheetHandle(),
          const SizedBox(
            height: 24,
          ),
          _EmojiDisplay(
            emoji: item.emoji,
          ),
          const SizedBox(
            height: 16,
          ),
          if (item.isPopular) ...[
            const _PopularBadge(),
            const SizedBox(
              height: 8,
            ),
          ],
          _ItemTitle(
            name: item.name,
          ),
          const SizedBox(
            height: 12,
          ),
          _ItemDescription(
            description: item.description,
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(
            color: AppColors.secondary.withValues(
              alpha: 0.15,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          _PriceDisplay(
            price: item.formattedPrice,
          ),
          const SizedBox(
            height: 20,
          ),
          _CloseButton(
            onPressed: () => Navigator.pop(
              context,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}

class _SheetHandle
    extends
        StatelessWidget {
  const _SheetHandle();

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Container(
      width: 40,
      height: 4,
      decoration: BoxDecoration(
        color: AppColors.textMuted.withValues(
          alpha: 0.4,
        ),
        borderRadius: BorderRadius.circular(
          2,
        ),
      ),
    );
  }
}

class _EmojiDisplay
    extends
        StatelessWidget {
  final String
  emoji;

  const _EmojiDisplay({
    required this.emoji,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.circular(
          24,
        ),
        border: Border.all(
          color: AppColors.secondary.withValues(
            alpha: 0.2,
          ),
        ),
      ),
      child: Center(
        child: Text(
          emoji,
          style: const TextStyle(
            fontSize: 52,
          ),
        ),
      ),
    );
  }
}

class _PopularBadge
    extends
        StatelessWidget {
  const _PopularBadge();

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: AppColors.accent,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: const Text(
        '⭐  Prato Popular',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}

class _ItemTitle
    extends
        StatelessWidget {
  final String
  name;

  const _ItemTitle({
    required this.name,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: AppColors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _ItemDescription
    extends
        StatelessWidget {
  final String
  description;

  const _ItemDescription({
    required this.description,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: AppColors.textMuted,
        fontSize: 14,
        height: 1.6,
      ),
    );
  }
}

class _PriceDisplay
    extends
        StatelessWidget {
  final String
  price;

  const _PriceDisplay({
    required this.price,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Text(
      price,
      style: const TextStyle(
        color: AppColors.accentYellow,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _CloseButton
    extends
        StatelessWidget {
  final VoidCallback
  onPressed;

  const _CloseButton({
    required this.onPressed,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accent,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            vertical: 14,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
        ),
        child: const Text(
          'Fechar',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
