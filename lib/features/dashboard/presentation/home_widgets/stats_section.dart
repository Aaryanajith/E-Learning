import 'package:e_learning_mobile/features/dashboard/presentation/home_widgets/info_card.dart';
import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  final int streakDays;
  final int ranking;

  const StatsSection({
    Key? key,
    required this.streakDays,
    required this.ranking,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InfoCard(
          title: 'Streak',
          imageAssetPath: 'lib/assets/streak_icon.png', 
          mainValue: '$streakDays',
          subtext: 'Days',
        ),
        InfoCard(
          title: 'Ranking',
          imageAssetPath: 'lib/assets/rank_icon.png',
          mainValue: '$ranking',
          subtext: 'This week',
        ),
      ],
    );
  }
}