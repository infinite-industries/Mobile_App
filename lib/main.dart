import 'package:flutter/material.dart';

import 'package:infinite_mobile_app/pages/loading.dart';
import 'package:infinite_mobile_app/pages/home.dart';
import 'package:infinite_mobile_app/pages/contact.dart';
import 'package:infinite_mobile_app/pages/donate.dart';
import 'package:infinite_mobile_app/pages/legal.dart';
import 'package:infinite_mobile_app/pages/mission.dart';
import 'package:infinite_mobile_app/pages/error_page.dart';
import 'package:infinite_mobile_app/pages/event_page.dart';
import 'package:infinite_mobile_app/theme.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'infinite_industries_channel', // id
    'Infinite Industries Notifications', // title
    'Notifying the world about our awesome event updates!', // description
    importance: Importance.high,
    playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('A bkg message just showed up :  ${message.messageId}');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  runApp(InitializationRoutines());
}

class InitializationRoutines extends StatefulWidget {
  @override
  _InitRoutesAndNotifications createState() => _InitRoutesAndNotifications();
}

class _InitRoutesAndNotifications extends State<InitializationRoutines> {
  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channel.description,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/infinite_launcher',
              ),
            ));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');

      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      if (notification != null && android != null) {
        Text? title =
            notification.title != null ? Text(notification.title!) : null;
        Text body = Text(notification.body != null ? notification.body! : '');

        showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: title,
                content: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [body],
                  ),
                ),
              );
            });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/loading', theme: infiniteTheme, routes: {
      '/loading': (context) => Loading(),
      '/home': (context) => Home(),
      '/contact': (context) => Contact(),
      '/donate': (context) => Donate(),
      '/legal': (context) => Legal(),
      '/mission': (context) => Mission(),
      '/event_page': (context) => EventPage(),
      '/error_page': (context) => ErrorPage(),
    });
  }
}
