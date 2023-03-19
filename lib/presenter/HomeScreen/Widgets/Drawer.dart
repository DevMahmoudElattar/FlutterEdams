import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/Cubit/SmallSharedCubit/small_shared_cubit.dart';
import '../../../logic/Cubit/SmallSharedCubit/small_shared_state.dart';
import '../../../utils/utils.dart';

Drawer HomeSC_Drawer(BuildContext context, Function(int val) itemTapped) {
  return Drawer(
    backgroundColor: Colors.white,
    width: Sizes.WthreeForth(context),
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: SizedBox(
            child: Image.asset(ImagesPath.Logo),
          ),
        ),
        ListTile(
          leading: IconsVal.home,
          title:  Text(Trans.textVal(context).homPage),
          onTap: () {
            itemTapped(0);
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: IconsVal.Consumtions,
          title:  Text(Trans.textVal(context).consumptions),
          onTap: () {
            itemTapped(1);
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: IconsVal.Applications,
          title:  Text(Trans.textVal(context).applications),
          onTap: () {
            itemTapped(2);
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: IconsVal.Messages,
          title:  Text(Trans.textVal(context).messages),
          onTap: () {
            itemTapped(3);
            Navigator.pop(context);
          },
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(
            thickness: 1,
          ),
        ),
        BlocBuilder<SmallSharedCubit, SmallSharedState>(
          builder: (context, state) {
            var bloc = context.read<SmallSharedCubit>();
            if (state is SmallSharedInitial) {
              return ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Trans.textVal(context).themeMode),
                    Switch(
                        value: state.isDark??false,
                        onChanged: (val) {
                          bloc.setIsDark(val);
                        }),
                  ],
                ),
              );
            }
            return const Text("Bloc Provider Not Read");
          },
        ),
        BlocBuilder<SmallSharedCubit, SmallSharedState>(
          builder: (context, state) {
            var bloc2 = context.read<SmallSharedCubit>();
            if (state is SmallSharedInitial) {
              return ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(Trans.textVal(context).lang),
                    Switch(
                        value: state.isEnglish??true,
                        onChanged: (val) {
                          if (val==true) {
                            bloc2.langIsEnglish(val);
                          }
                          bloc2.langIsEnglish(val);
                        }),
                    // IconButton( icon: const Icon(Icons.language,color: Colors.blue), onPressed: () {
                    //   bloc.setLang(lang)
                    // },),
                  ],
                ),
              );
            }
            return const Text("Bloc Provider Not Read");
          },
        )
      ],
    ),
  );
}
