import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../data/models/menu_item.dart';
import 'menu_item_detail_sheet.dart';

class MenuCard
    extends
        StatelessWidget {
  final MenuItem
  item;

  const MenuCard({
    super.key,
    required this.item,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return GestureDetector(
      onTap: () => _openDetailSheet(
        context,
      ),
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 14,
        ),
        decoration: BoxDecoration(
          color: AppColors.cardBg,
          borderRadius: BorderRadius.circular(
            20,
          ),
          border: Border.all(
            color: item.isPopular
                ? AppColors.accent.withValues(
                    alpha: 0.5,
                  )
                : AppColors.secondary.withValues(
                    alpha: 0.15,
                  ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(
                alpha: 0.2,
              ),
              blurRadius: 12,
              offset: const Offset(
                0,
                4,
              ),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            16,
          ),
          child: Row(
            children: [
              _EmojiThumbnail(
                emoji: item.emoji,
              ),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                child: _CardContent(
                  item: item,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void
  _openDetailSheet(
    BuildContext
    context,
  ) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder:
          (
            _,
          ) => MenuItemDetailSheet(
            item: item,
          ),
    );
  }
}

// ── Emoji thumbnail box ───────────────────────────────────────────────────────

class _EmojiThumbnail
    extends
        StatelessWidget {
  final String
  emoji;

  const _EmojiThumbnail({
    required this.emoji,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(
          16,
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
            fontSize: 34,
          ),
        ),
      ),
    );
  }
}

// ── Card text content ─────────────────────────────────────────────────────────

class _CardContent
    extends
        StatelessWidget {
  final MenuItem
  item;

  const _CardContent({
    required this.item,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TitleRow(
          item: item,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          item.description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: AppColors.textMuted,
            fontSize: 12,
            height: 1.4,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        _PriceRow(
          item: item,
        ),
      ],
    );
  }
}

class _TitleRow
    extends
        StatelessWidget {
  final MenuItem
  item;

  const _TitleRow({
    required this.item,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Row(
      children: [
        Expanded(
          child: Text(
            item.name,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        if (item.isPopular) const _PopularBadge(),
      ],
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
        horizontal: 8,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        color: AppColors.accent,
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: const Text(
        '⭐ Popular',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _PriceRow
    extends
        StatelessWidget {
  final MenuItem
  item;

  const _PriceRow({
    required this.item,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          item.formattedPrice,
          style: const TextStyle(
            color: AppColors.accentYellow,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        _DetailsButton(),
      ],
    );
  }
}

class _DetailsButton
    extends
        StatelessWidget {
  const _DetailsButton();

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondary.withValues(
          alpha: 0.15,
        ),
        borderRadius: BorderRadius.circular(
          8,
        ),
        border: Border.all(
          color: AppColors.secondary.withValues(
            alpha: 0.3,
          ),
        ),
      ),
      child: const Text(
        'Ver detalhes →',
        style: TextStyle(
          color: AppColors.secondary,
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
