import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customers_app/presenter/ApplicationsScreen/AppSC.dart';
import 'package:customers_app/presenter/HomeScreen/HomeSC.dart';
import 'package:customers_app/presenter/Login_SC/ForgetSC.dart';
import 'package:customers_app/presenter/Login_SC/SignUpSC.dart';
import 'package:customers_app/presenter/MessagesScreen/MsgsSC.dart';
import 'package:customers_app/presenter/Report/ReportProblem.dart';
import 'package:customers_app/presenter/SplachScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_fonts/google_fonts.dart';
import 'logic/Cubit/SmallSharedCubit/small_shared_cubit.dart';
import 'logic/Cubit/SmallSharedCubit/small_shared_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

int id = 0;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

const String portName = 'notification_send_port';

class ReceivedNotification {
  ReceivedNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.payload,
  });

  final int id;
  final String? title;
  final String? body;
  final String? payload;
}

String? selectedNotificationPayload;

/// A notification action which triggers a url launch event
const String urlLaunchActionId = 'id_1';

/// A notification action which triggers a App navigation event
const String navigationActionId = 'id_3';

/// Defines a iOS/MacOS notification category for text input actions.
const String darwinNotificationCategoryText = 'textCategory';

/// Defines a iOS/MacOS notification category for plain actions.
const String darwinNotificationCategoryPlain = 'plainCategory';

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  // ignore: avoid_print
  print('notification(${notificationResponse.id}) action tapped: '
      '${notificationResponse.actionId} with'
      ' payload: ${notificationResponse.payload}');
  if (notificationResponse.input?.isNotEmpty ?? false) {
    // ignore: avoid_print
    print(
        'notification action tapped with input: ${notificationResponse.input}');
  }
}

//BG work Function
Future<void> _firebaseMessagingBackgroundHandler (RemoteMessage message) async {
  print('Handling a background message ${message.messageId}');
}

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseMessaging.instance.getInitialMessage();

  //To make Messages Work in BackGround;
  //FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(const MyApp());
}

//flutterLocalNotificationsPlugin
void requestPermission() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission');
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('User granted provisional permission');
  } else {
    print("User declined or has not accepted permission");
  }
}

void getToken() async {
  await FirebaseMessaging.instance.getToken().then((token) {
    print("My token is $token");
  }).catchError((onError) {
    print("err ${onError.toString()}");
  });
}

void saveToken(String token) async {
  await FirebaseFirestore.instance.collection("UserTokens").doc("Users2").set({
    'token': token,
  });
}

void initInfo() async {
  var androidInitialize =
      const AndroidInitializationSettings('@mipmap/ic_launcher');
  var i0SInitialize = const DarwinInitializationSettings();
  var initializationsSettings =
      InitializationSettings(android: androidInitialize, iOS: i0SInitialize);

  await flutterLocalNotificationsPlugin.initialize(
    initializationsSettings,
    onDidReceiveNotificationResponse:
        (NotificationResponse notificationResponse) {
      switch (notificationResponse.notificationResponseType) {
        case NotificationResponseType.selectedNotification:

          break;
        case NotificationResponseType.selectedNotificationAction:
          if (notificationResponse.actionId == navigationActionId) {

          }
          break;
      }
    },
    onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
  );

  FirebaseMessaging.onMessage.listen((RemoteMessage message) async{
    print("========ON Message=========");
    print("onMessage: ${message.notification?.title}/${message.notification?.body}}");

    BigTextStyleInformation bigTextStyleInformation = BigTextStyleInformation(
      message.notification!.body.toString(), htmlFormatBigText: true,
      contentTitle: message.notification!.title.toString(), htmlFormatContentTitle: true,
    );

    AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'dbfood', 'dbfood', importance: Importance.high,
      styleInformation: bigTextStyleInformation, priority: Priority.high, playSound: true,
      // sound: RowResourceAndroidNotificationSound (‘notification’),
    );

    NotificationDetails platformChannelSpecifics = NotificationDetails(android: androidPlatformChannelSpecifics,
        iOS: const DarwinNotificationDetails() );

    await flutterLocalNotificationsPlugin.show(0,message.notification?.title,message.notification?.body,platformChannelSpecifics,
        payload: message.data['title']);
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String Mtoken = "";

  @override
  void initState() {
    super.initState();
    requestPermission();
    getToken();
    initInfo();
  }

  void getToken() async {
    await FirebaseMessaging.instance.getToken().then((token) {
      print("My token is $token");
      setState(() {
        Mtoken = token!;
      });
      saveToken(token!);
    }).catchError((onError) {
      print("err ${onError.toString()}");
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SmallSharedCubit(),
      child: BlocBuilder<SmallSharedCubit, SmallSharedState>(
        builder: (context, state) {
          var bloc = context.read<SmallSharedCubit>();
          if (state is SmallSharedInitial) {
            return MaterialApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: state.isEnglish == true
                  ? const Locale("en")
                  : const Locale('ar'),
              debugShowCheckedModeBanner: false,
              routes: {
                '/': (context) => const SplachScreen(),
                '/Home': (context) => const HomeSC(),
                '/Forget' : (context) => const ForgetSC(),
                '/SignUp' : (context) => const SignUpSC(),
                '/ReportProblem' : (context) => const ReportProblemSC(),
                '/Apps' : (context) => const AppSC(),
                '/Msgs' : (context) => const MsgsSC(),
              },
              title: 'Flutter Demo',
              theme: ThemeData(
                // This is the theme of your application.
                //
                // Try running your application with "flutter run". You'll see the
                // application has a blue toolbar. Then, without quitting the app, try
                // changing the primarySwatch below to Colors.green and then invoke
                // "hot reload" (press "r" in the console where you ran "flutter run",
                // or simply save your changes to "hot reload" in a Flutter IDE).
                // Notice that the counter didn't reset back to zero; the application
                // is not restarted.
                brightness:
                    state.isDark == true ? Brightness.dark : Brightness.light,
                fontFamily: GoogleFonts.cairo().fontFamily,
                primarySwatch: Colors.blue,
              ),

              //theme: state.isDark ?ThemeData.dark() :  ThemeData.light()
              // home: SplachScreen(),
            );
          }
          ;
          return const Text("Bloc Provider Not Set");
        },
      ),
    );
  }
}
