import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../data/repositories/menu_repository.dart';
import '../widgets/menu_card.dart';
import '../widgets/restaurant_header.dart';

class HomeScreen
    extends
        StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<
    HomeScreen
  >
  createState() =>
      _HomeScreenState();
}

class _HomeScreenState
    extends
        State<
          HomeScreen
        >
    with
        TickerProviderStateMixin {
  late final TabController
  _tabController;

  @override
  void
  initState() {
    super.initState();
    _tabController = TabController(
      length: MenuRepository.categories.length,
      vsync: this,
    );
  }

  @override
  void
  dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Column(
        children: [
          const RestaurantHeader(),
          _buildCategoryTabBar(),
          Expanded(
            child: _buildMenuTabBarView(),
          ),
        ],
      ),
    );
  }

  Widget
  _buildCategoryTabBar() {
    return Container(
      color: AppColors.bg,
      child: TabBar(
        controller: _tabController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        indicatorColor: AppColors.accent,
        indicatorWeight: 3,
        labelColor: AppColors.white,
        unselectedLabelColor: AppColors.textMuted,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        tabs: MenuRepository.categories
            .map(
              (
                category,
              ) => Tab(
                child: Row(
                  children: [
                    Text(
                      category.icon,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      category.name,
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget
  _buildMenuTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: MenuRepository.categories
          .map(
            (
              category,
            ) => ListView.builder(
              padding: const EdgeInsets.all(
                16,
              ),
              itemCount: category.items.length,
              itemBuilder:
                  (
                    context,
                    index,
                  ) => MenuCard(
                    item: category.items[index],
                  ),
            ),
          )
          .toList(),
    );
  }
}
