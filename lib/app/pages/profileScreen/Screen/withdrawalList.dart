import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karkhana_app/app/app.dart';
import 'package:karkhana_app/app/navigators/navigators.dart';
import 'package:karkhana_app/app/pages/profileScreen/profile_controller.dart';
import 'package:karkhana_app/app/utils/utility.dart';

class WithdrawalListView extends StatelessWidget {
  const WithdrawalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: ColorsValue.whiteColor,
          appBar: AppBar(
            title: Text(
              'list_of_employs'.tr,
              style: Styles.blackBold16,
            ),
          ),
          body: SafeArea(
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Utility.addEmploy.length,
              itemBuilder: (context, index) {
                var employ = Utility.addEmploy[index];
                return ListTile(
                  title: Text(
                    employ.eployName,
                    style: Styles.black50022.copyWith(fontSize: 16),
                  ),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    RouteManagement.goToAddWithdrawalView();
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}