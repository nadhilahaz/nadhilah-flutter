import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'app/_index.dart';

void main() async {
  // Mocks.instance.init();
  RM.env = Flavor.dev;
  await inits();

  runApp(
    DevicePreview(
      enabled: PlatformType.isLinux,
      storage: DevicePreviewStorage.preferences(),
      builder: (context) {
        return MaterialApp.router(
          // title: config.st.appName,
          debugShowCheckedModeBanner: false,
          theme: themeRM.lightTheme,
          darkTheme: themeRM.darkTheme,
          themeMode: themeRM.themeMode,
          locale: i18nRM.locale,
          localeResolutionCallback: i18nRM.localeResolutionCallback,
          localizationsDelegates: i18nRM.localizationsDelegates,
          routeInformationParser: nav.routeInformationParser,
          routerDelegate: nav.routerDelegate,
        );
      },
    ),
  );
}
