import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class RestaurantHeader
    extends
        StatelessWidget {
  const RestaurantHeader({
    super.key,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(
              0xFF023E5C,
            ),
            Color(
              0xFF0077B6,
            ),
          ],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            20,
            16,
            20,
            24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            color: AppColors.accent,
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              '🍽️',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Nome do Restaurante',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              Text(
                                'Endereço do Local 📍',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: AppColors.textMuted,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(
                        0x3300B4D8,
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      border: Border.all(
                        color: AppColors.secondary.withValues(
                          alpha: 0.4,
                        ),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: Color(
                            0xFF06D6A0,
                          ),
                          size: 8,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Aberto',
                          style: TextStyle(
                            color: Color(
                              0xFF06D6A0,
                            ),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(
                  16,
                ),
                decoration: BoxDecoration(
                  color: const Color(
                    0x22FFFFFF,
                  ),
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                  border: Border.all(
                    color: AppColors.secondary.withValues(
                      alpha: 0.2,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: _StatItem(
                        emoji: '🥘',
                        label: 'Especialidades',
                        value: 'Feitos na hora',
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: AppColors.secondary.withValues(
                        alpha: 0.2,
                      ),
                    ),
                    const Expanded(
                      child: _StatItem(
                        emoji: '⭐',
                        label: 'Avaliação',
                        value: '4.9 estrelas',
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: AppColors.secondary.withValues(
                        alpha: 0.2,
                      ),
                    ),
                    const Expanded(
                      child: _StatItem(
                        emoji: '🕐',
                        label: 'Horário',
                        value: '11h – 22h',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatItem
    extends
        StatelessWidget {
  final String
  emoji;
  final String
  label;
  final String
  value;

  const _StatItem({
    required this.emoji,
    required this.label,
    required this.value,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Column(
      children: [
        Text(
          emoji,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          value,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: AppColors.textMuted,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
