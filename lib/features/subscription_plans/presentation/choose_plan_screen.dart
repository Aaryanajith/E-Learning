import 'package:e_learning_mobile/features/subscription_plans/application/current_tab_provider.dart';
import 'package:e_learning_mobile/features/subscription_plans/application/plans_provider.dart';
import 'package:e_learning_mobile/features/subscription_plans/presentation/subscription_widgets/plan_details.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:flutter/material.dart';

class ChoosePlanScreen extends ConsumerWidget {

  const ChoosePlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planAsyncValue = ref.watch(plansProvider);
    final currentTabNotifier = ref.read(currentTabProvider.notifier);
    final currentTabState = ref.watch(currentTabProvider);

    return planAsyncValue.when(
      data: (plans) {
        return DefaultTabController(
          length: plans.length,
          animationDuration: Duration.zero,
          child: Builder(
            builder: (BuildContext context){
              final TabController tabController = DefaultTabController.of(context);
              tabController.addListener(() {
                  currentTabNotifier.setTab(tabController.index);
              });
              final currentTabTheme = currentTabNotifier.getTabTheme(currentTabState.currentTab);
              final hasGradient = currentTabTheme.gradient != null;

              return Scaffold(
                  appBar : ELearningAppBar(
                    title: "Choose your plan",
                    issplash: hasGradient,
                    backButton: true,
                    backgroundColor: currentTabTheme.color,
                    flexibleSpace: hasGradient
                      ? Container(
                          decoration: BoxDecoration(
                            gradient: currentTabTheme.gradient,
                          ),
                        )
                      : null,
                    trailing: Padding(padding: const EdgeInsets.symmetric(horizontal: 16),child:IconButton(
                      icon: Icon(Icons.help_outline , color: hasGradient?ColorsClass.white :ColorsClass.textGrey , size: 30,),
                      onPressed: () {
                        // Handle help button press
                        },
                      ),
                    ),
                    bottom: TabBar(
                      tabs: plans.map((plan){
                        return Tab(text: plan.planName);
                      }).toList(),
                      indicatorColor: hasGradient ? ColorsClass.white :ColorsClass.textGrey,
                      labelStyle: hasGradient ? TextStylesClass.customize(TextStylesClass.pb , color: ColorsClass.white):  TextStylesClass.pb,
                      unselectedLabelStyle: hasGradient ? 
                        TextStylesClass.customize(
                            TextStylesClass.pb,
                            color: ColorsClass.white
                            ):  TextStylesClass.pb,
                      indicatorWeight: 3.0,
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor:Colors.transparent
                    ),
                  ),
                body:Container(
                  decoration:BoxDecoration(
                    color : currentTabTheme.color,
                    gradient:currentTabTheme.gradient
                  ),
                  child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children : plans.map((plan) {
                          return PlanDetails(
                            planName: plan.planName,
                            price: plan.price,
                            description: plan.description,
                            features: plan.features,
                            planTheme : currentTabTheme.color ,
                            gradient : currentTabTheme.gradient,
                            textColor: hasGradient ? Colors.white : null,
                          );
                        }).toList(),
                ),)
              );
            },
          )
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
