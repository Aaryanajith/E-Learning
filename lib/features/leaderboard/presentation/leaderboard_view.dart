import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/features/leaderboard/data/leaderboard_provider.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/error_widget.dart';
import 'package:e_learning_mobile/widgets/leaderboard_widgets/podium.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:intl/intl.dart';

class Leaderboard extends ConsumerWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var now = DateTime.now();
    // var formatter = DateFormat('yyyy-MM-dd');
    // String date = formatter.format(now);

    final leaderboardState = ref.watch(getLeaderboardProvider("2024-01-11"));

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ColorsClass.bg,
        appBar: const ELearningAppBar(
            title: "Leaderboard",
            issplash: false,
            backButton: true,
          ),
        body: Column(
          children: [
            Container(
              color: ColorsClass.bg,
              child: TabBar(
                labelColor: Theme.of(context).primaryColor,
                indicatorColor: Theme.of(context).primaryColor,
                tabs: const [
                  Tab(text: "Weekly"),
                  Tab(text: "Monthly"),
                  Tab(text: "All time"),
                ],
              ),
            ),
            leaderboardState.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error, stackTrace) => ELErrorWidget(e: error),
              data: (data) {
                if (data.standings.isEmpty) {
                  return const Center(
                    child: Text('Leaderboard is empty'),
                  );
                } else {
                  final podiumWidth = ScreenUtils.screenWidth(context) * 0.12;
                  final totalPodiumWidth = podiumWidth * data.standings.length;
                  final double spacing =
                      (ScreenUtils.screenWidth(context) - totalPodiumWidth) /
                          (data.standings.length + 1);
                  final double actualSpacing =
                      spacing + podiumWidth * 0.25; // Adjust the spacing here

                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      height: ScreenUtils.screenHeight(context) * 0.35,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: spacing,
                            bottom: ScreenUtils.screenHeight(context) * 0.05,
                            child: Podium(
                              rank: 1,
                              name: data.userRanking == 1
                                  ? 'You'
                                  : data.standings[0].username,
                              score: data.standings[0].score,
                              imagePath: '',
                              imageSize:
                                  ScreenUtils.screenHeight(context) * 0.12,
                              topPadding:
                                  ScreenUtils.screenHeight(context) * 0.01,
                            ),
                          ),
                          if (data.standings.length > 1) ...[
                            Positioned(
                              left: spacing + actualSpacing,
                              bottom: ScreenUtils.screenHeight(context) * 0.05,
                              child: Podium(
                                rank: 2,
                                name: data.userRanking == 2
                                    ? 'You'
                                    : data.standings[1].username,
                                score: data.standings[1].score,
                                imagePath: '',
                                imageSize:
                                    ScreenUtils.screenHeight(context) * 0.12,
                                topPadding:
                                    ScreenUtils.screenHeight(context) * 0.01,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  );
                }
              },
            ),
            Expanded(
              child: leaderboardState.when(
                data: (data) {
                  return ListView.builder(
                    itemCount: data.standings.length,
                    itemBuilder: (context, index) {
                      final user = data.standings[index];
                      final username =
                          index == data.userRanking - 1 ? 'You' : user.username;
                      final isCurrentUser = index == data.userRanking - 1;
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: ColorsClass.boxShadow,
                                blurRadius: 20,
                                offset: Offset(4, 4),
                                spreadRadius: 0,
                              ),
                            ],
                            color: isCurrentUser
                                ? ColorsClass.primaryTheme
                                : ColorsClass.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: ScreenUtils.screenHeight(context) * 0.1,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Text(
                                  '${index + 1}',
                                  style: TextStyle(
                                    color: isCurrentUser
                                        ? Colors.white
                                        : Theme.of(context).primaryColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                Container(
                                  height:
                                      ScreenUtils.screenHeight(context) * 0.2,
                                  width: ScreenUtils.screenWidth(context) * 0.2,
                                  decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    username,
                                    style: TextStyle(
                                      color: isCurrentUser
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  '${user.score}',
                                  style: TextStyle(
                                    color: isCurrentUser
                                        ? Colors.white
                                        : Theme.of(context).primaryColor,
                                    fontSize: 22,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (e, _) => ELErrorWidget(e: e),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
