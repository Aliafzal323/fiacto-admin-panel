import 'package:dio_project/routes/app-route.dart';
import 'package:dio_project/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      initialRoute: '/',
      getPages: AppPages.pages,
      unknownRoute: GetPage(
        name: '/page-not-found',
        page:
            () => Scaffold(
              appBar: AppBar(title: Center( child: Text('Page not Found'))),
            ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Column(
        children: [
          // Text('Simple Navigation: Default vs Getx Navigation'),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.of(context).pushNamed('/secondScreen');
          //     // Navigator.push(
          //     //   context,
          //     //   MaterialPageRoute(builder: (context) => SecondScreen()),
          //     // );
          //   },
          //   child: Text('Default Navigation'),
          // ),
          // SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.to(() => SecondScreen());
            },
            child: Text('Getx Navigation'),
          ),
          SizedBox(height: 50),
          Text(
            'Named Navigation: GetX with Data Passing, data in Url, Data in url Wwith Arguments',
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(
                '/second-screen',
                arguments: 'Getx with Data Passing',
              );
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SecondScreen()),
              // );
            },
            child: Text('Pass Data with Getx'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/second-screen?=id=1&name=Getx');
            },
            child: Text('Getx Navigation'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/second-screen/1234');
            },
            child: Text('Getx Navigation'),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Column(children: [Text(Get.parameters['userId'] ?? '')]),
    );
  }
}
