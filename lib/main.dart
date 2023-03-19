import 'package:customers_app/presenter/HomeScreen/HomeSC.dart';
import 'package:customers_app/presenter/SplachScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'logic/Cubit/SmallSharedCubit/small_shared_cubit.dart';
import 'logic/Cubit/SmallSharedCubit/small_shared_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SmallSharedCubit(),
      child: BlocBuilder<SmallSharedCubit, SmallSharedState>(
        builder: (context, state) {
          var bloc = context.read<SmallSharedCubit>();
          if( state is SmallSharedInitial){
            return MaterialApp(
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                locale: state.isEnglish  == true? const Locale("en") : const Locale('ar')
                ,
                debugShowCheckedModeBanner: false,
                routes: {
                  '/': (context) => const SplachScreen(),
                  '/Home': (context) => const HomeSC(),
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
                  brightness: state.isDark == true ?Brightness.dark :  Brightness.light,
                  fontFamily: GoogleFonts.cairo().fontFamily,
                  primarySwatch: Colors.blue,
                ),

                //theme: state.isDark ?ThemeData.dark() :  ThemeData.light()
              // home: SplachScreen(),
            );
          };
          return const Text("Bloc Provider Not Set");
        },
      ),
    );
  }
}




