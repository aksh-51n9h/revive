import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:revive/lib.dart';
import 'package:revive/widgets/spacing.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          )),
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        children: [
          const Spacing(vertical: 48),
          CircleAvatar(
            radius: getRadius(context),
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: getRadius(context),
            ),
          ),
          const Spacing(vertical: 16),
          const Divider(),
          TextButton(onPressed: null, child: Text(myProfileButtonText)),
          const Spacing(vertical: drawerMenuItemSpacing),
          TextButton(onPressed: null, child: Text(mapButtonText)),
          const Spacing(vertical: drawerMenuItemSpacing),
          TextButton(onPressed: null, child: Text(historyButtonText)),
          const Spacing(vertical: drawerMenuItemSpacing),
          TextButton(onPressed: null, child: Text(settingsButtonText)),
          const Spacing(vertical: drawerMenuItemSpacing),
          TextButton(onPressed: null, child: Text(aboutButtonText)),
          const Divider(),
          const Spacing(vertical: drawerMenuItemSpacing),
          TextButton(onPressed: null, child: Text(logoutButtonText)),
          const Divider(),
          const Text("version \u2022 1.0"),
          if (kIsWeb)
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
            ),
        ],
      ),
    );
  }

  double getRadius(BuildContext context) {
    return MediaQuery.of(context).size.width / 8;
  }
}
