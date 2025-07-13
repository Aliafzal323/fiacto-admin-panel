import 'package:common/common.dart';
import 'package:dio_project/common/widgets/custom_title_subtitle.dart';
import 'package:dio_project/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key, this.drawerItemDataList});

  final List<DrawerItemData>? drawerItemDataList;

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final _tooltipController = OverlayPortalController();
  @override
  Widget build(BuildContext context) {
    // final user = context.select((AuthRepository value) => value.currentUser);
    return Container(
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: Colors.grey.shade300)),
      ),
      width: MediaQuery.of(context).size.width * 0.78,
      padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
      child: Drawer(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildDrawerHeader(context, true, _tooltipController),
                  ..._buildItemList(
                    context,
                    widget.drawerItemDataList ?? DrawerItemData.data(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerHeader(
    BuildContext context,
    // User? user,
    bool isFocalPerson,
    OverlayPortalController controller,
  ) {
    return !DeviceUtils.isDesktopScreen(context)
        ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  const AssetIcon.monotone(AssetIcons.arrow_left),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.close),
                  ),
                ],
              ),
            ),

            Stack(
              children: [
                Container(
                  height: 130,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      opacity: 1.2,
                      // opacity: 0.8,
                      image: AssetImage('assets/images/simple_avatar.png'),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 30,
                  child: Row(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(color: context.white, spreadRadius: 12),
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            'assets/images/Avatar.png',
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      CustomTitleSubtitle(
                        subtitleStyle: context.twelve400.withColor(
                          context.white,
                        ),
                        titleStyle: context.sixteen700.withColor(context.white),
                        title: 'Robert Fox',
                        subtitle: 'robertfox@email.com',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
          ],
        )
        : Container(
          height: 130,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: context.grey200),
              left: BorderSide(color: context.grey200),
            ),
            image: DecorationImage(
              opacity: 1.2,
              // opacity: 0.8,
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        );
  }

  List<Widget> _buildItemList(
    BuildContext context,
    List<DrawerItemData> itemDataList,
  ) {
    return [
      for (final DrawerItemData item in itemDataList)
        ListTile(
          leading:
              item.icon == null
                  ? null
                  : SizedBox(
                    height: 24,
                    child: AssetIcon.monotone(item.icon ?? AssetIcons.blank),
                  ),
          horizontalTitleGap: 12,
          contentPadding: const EdgeInsets.only(left: 16, right: 16),
          title: Text(item.title, style: context.sixteen400),
          onTap: item.onTap,
        ),
    ];
  }
}

class DrawerItemData {
  DrawerItemData({
    required this.title,
    this.icon,
    this.onTap,
    this.style,
    this.subRoutes = const [],
  });
  final String title;
  final TextStyle? style;
  final AssetIcons? icon;
  final void Function()? onTap;
  final List<DrawerItemData> subRoutes;

  static List<DrawerItemData> data(BuildContext context) {
    return [
      DrawerItemData(
        title: 'Home',
        icon: AssetIcons.home,
        onTap: () {
          // Navigator.of(context).pop();
          // Navigator.of(context).push(OfferManagementPage.route());
        },
      ),
      DrawerItemData(
        title: 'Listings',
        icon: AssetIcons.listings,
        onTap: () {
          // Navigator.of(context).pop();
          // Navigator.of(context).push(RentPurchaseManagementPage.route());
        },
      ),
      DrawerItemData(
        title: 'Offers',
        icon: AssetIcons.offer,
        onTap: () {
          // Navigator.of(context).pop();
          // Navigator.of(context).push(FundsBalancePage.route());
        },
      ),
      DrawerItemData(
        title: 'Inspection',
        icon: AssetIcons.inspections,
        onTap: () {
          // Navigator.of(context).pop();
          // Navigator.of(context).push(DocumentManagementPage.route());
        },
      ),
      DrawerItemData(
        title: 'Deals',
        icon: AssetIcons.deals,
        onTap: () {
          // Navigator.of(context).pop();
          // Navigator.of(context).push(MessagePage.route());
        },
      ),
      DrawerItemData(
        title: 'Messages',
        icon: AssetIcons.messages,
        onTap: () {
          // Navigator.of(context).pop();
          // Navigator.of(context).push(SettingPage.route());
        },
      ),
      DrawerItemData(
        title: 'Settings',
        icon: AssetIcons.settings,
        onTap: () {
          // Navigator.of(context).pop();
          // Navigator.of(context).push(SettingPage.route());
        },
      ),
      DrawerItemData(
        title: 'Help Center',
        icon: AssetIcons.help_center,
        onTap: () {
          // Navigator.of(context).pop();
          // Navigator.of(context).push(HelpCenterPage.route());
        },
      ),
      DrawerItemData(
        title: 'Log out',
        style: context.fourteen400.withColor(context.error500),
        icon: AssetIcons.authenticator_app,
        onTap: () {
          showDialog<AlertDialog>(
            context: context,
            builder: (BuildContext dialogContext) {
              return AlertDialog(
                title: Text(
                  'Are you sure you want to log out?',
                  style: context.twenty700,
                ),
                actions: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: Text('Cancel', style: context.sixteen400),
                        onPressed: () {
                          Navigator.of(
                            dialogContext,
                          ).pop(); // Dismiss alert dialog
                        },
                      ),
                      TextButton(
                        child: Text('Yes, Confirm', style: context.sixteen400),
                        onPressed: () {
                          // context.read<AuthRepository>().logOut();
                        },
                      ),
                    ],
                  ),
                ],
              );
            },
          );
          //
        },
      ),
    ];
  }
}
