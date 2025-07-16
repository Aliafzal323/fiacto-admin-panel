import 'package:dio_project/common/widgets/network_image.dart';
import 'package:dio_project/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CustomAppHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(color: Colors.grey.shade300),
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: AppBar(
        leading:
            !DeviceUtils.isDesktopScreen(context)
                ? IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                )
                : null,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          SizedBox(width: 16),
          Row(
            children: [
              if (DeviceUtils.isDesktopScreen(context)) ...[
                NetworkImageWidget(imageUrl: ''),
                SizedBox(width: 8),
                Text('Realty', style: TextStyle(color: Colors.black)),
                SizedBox(width: 8),
                Icon(Icons.arrow_drop_down),
              ],
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight() + 15);
}
