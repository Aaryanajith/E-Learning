import 'package:e_learning_mobile/routes/route_names.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:e_learning_mobile/widgets/dropdown_menu.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';

class UserReg extends StatefulWidget {
  const UserReg({Key? key}) : super(key: key);

  @override
  State<UserReg> createState() => _UserRegState();
}

class _UserRegState extends State<UserReg> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  final TextEditingController countryController = TextEditingController();
  final TextEditingController occupationController = TextEditingController();

  String? selectedValue;

  List<DropdownMenuEntry<String>> dropdownItemsCountries = [];
  List<DropdownMenuEntry<String>> dropdownItemsOccupations = [];

  final List<String> countries = ['India', 'USA', 'United Kingdom', 'Canada'];
  final List<String> occupations = ['Student', 'Teacher', 'Engineer', 'Doctor'];

  @override
  void initState() {
    super.initState();
    dropdownItemsCountries = countries.map((country) {
      return DropdownMenuEntry<String>(
        value: country,
        label: country,
      );
    }).toList();
    super.initState();
    dropdownItemsOccupations = occupations.map((occupation) {
      return DropdownMenuEntry<String>(
        value: occupation,
        label: occupation,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Container(
            height: ScreenUtils.screenHeight(context),
            width: ScreenUtils.screenWidth(context),
            padding: EdgeInsets.only(
              left: ScreenUtils.w3(context),
              right: ScreenUtils.w3(context),
              top: ScreenUtils.h6(context),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tell us more about yourself',
                  style: TextStyle(
                    color: ColorsClass.black,
                    fontSize: 36,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: ScreenUtils.h4(context)),
                SizedBox(
                  height: ScreenUtils.h4(context),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      hintText: 'Name',
                      hintStyle: const TextStyle(
                        color: ColorsClass.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: ScreenUtils.h2(context)),
                Row(
                  children: [
                    SizedBox(
                      height: ScreenUtils.h4(context),
                      width: ScreenUtils.w2(context) * 5.063,
                      child: TextFormField(
                        controller: ageController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          hintText: 'Age',
                          hintStyle: const TextStyle(
                            color: ColorsClass.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ScreenUtils.w2(context)),
                    Expanded(
                      child: DropDownMenu(
                        width: ScreenUtils.w6(context) * 2.25,
                        onSelected: (value) {
                          selectedValue = value;
                        },
                        label: 'Country',
                        controller: countryController,
                        dropdownMenuEntries: dropdownItemsCountries,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtils.h2(context),
                ),
                Expanded(
                  child: DropDownMenu(
                    width: ScreenUtils.w5(context) * 2.45,
                    onSelected: (value) {
                      selectedValue = value;
                    },
                    label: 'Occupation',
                    controller: occupationController,
                    dropdownMenuEntries: dropdownItemsOccupations,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: ScreenUtils.h4(context),
                    ),
                    child: BottomButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteNames.userPrefs);
                      },
                      text: 'Next',
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
