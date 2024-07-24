// import 'package:dicoding_flutter/Cupertino/feeds_page.dart';
// import 'package:dicoding_flutter/Cupertino/search_page.dart';
// import 'package:dicoding_flutter/Cupertino/setting_page.dart';
// import 'package:flutter/cupertino.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const CupertinoApp(
//       theme: CupertinoThemeData(
//         primaryColor: CupertinoColors.systemOrange,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//       tabBar: CupertinoTabBar(
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(CupertinoIcons.news),
//             label: 'Feeds',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(CupertinoIcons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(CupertinoIcons.settings),
//             label: 'Settings',
//           ),
//         ],
//       ),
//       tabBuilder: (context, index) {
//         switch (index) {
//           case 0:
//             return FeedsPage();
//           case 1:
//             return SearchPage();
//           case 2:
//             return SettingPage();
//           default:
//             return const Center(
//               child: Text('Page not found!'),
//             );
//         }
//       },
//     );
    
//     // return CupertinoPageScaffold(
//     //   navigationBar: const CupertinoNavigationBar(
//     //     middle: Text('Cupertino App'),
//     //   ),
//     //   child: Center(
//     //     child: Text(
//     //       'Home Page',
//     //       style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
//     //     ),
//     //   ),
//     // );
//   }
// }
