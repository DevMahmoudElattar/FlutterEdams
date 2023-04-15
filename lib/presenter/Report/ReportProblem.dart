import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class ReportProblemSC extends StatelessWidget {
  const ReportProblemSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          actions: [],
          iconTheme: const IconThemeData(color: Colors.blue),
          backgroundColor: Colors.white,
          //leading: Container(), adding this Will remove default humburger menu of drawer
          title:  Text("Report A Problem",style: TextStyle(color: Colors.blue),),
        ),
        body:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: Sizes.hGeneral(context, .5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color : Colors.white,
                boxShadow: [...OtherSharedValues.SectionShadow]
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const TextField(  decoration: InputDecoration(
                      labelText: 'Address',
                      hintText: 'Enter Your Address'
                  ),  ),
                  const TextField(  decoration: InputDecoration(
                      labelText: 'Comments',
                      hintText: 'Enter Your Comments'
                  ),  ),
                  const TextField(  decoration: InputDecoration(
                      labelText: 'Mobile No',
                      hintText: 'Enter Your Mobile No.'
                  ),  ),
                  const Divider(height: 20,color: Colors.transparent,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: (){}, child:  Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(width: 35,child: Image.memory(ImageFromSvg.CameraIcon())),
                      )),
                      ElevatedButton(onPressed: (){}, child:  Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(width: 35,child: Image.memory(ImageFromSvg.SaveIcon())),
                      )),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
