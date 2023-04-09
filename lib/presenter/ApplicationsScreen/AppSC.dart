import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class AppSC extends StatelessWidget {
  const AppSC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("My Applications"),
                  ElevatedButton(onPressed: (){}, child: const Icon(Icons.add))
                ],
              ),
            ),
            Divider(height: 10,color: Colors.transparent,),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color : Colors.white,
                  boxShadow: [...OtherSharedValues.SectionShadow]
              ),
              child:Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 35,height: 35,child: Image.memory(ImageFromSvg.MeterReading())),
                        Text("Submit Reading"),
                      ],

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(width: 35,height: 35,child: Image.memory(ImageFromSvg.Done())),
                        Text("Submited"),
                      ],

                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color : Colors.white,
                  boxShadow: [...OtherSharedValues.SectionShadow]
              ),
              child:Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 35,height: 35,child: Image.memory(ImageFromSvg.Application())),
                        Text("Complaint"),
                      ],

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(width: 35,height: 35,child: Image.memory(ImageFromSvg.Inprogress())),
                        Text("In Progress"),
                      ],

                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color : Colors.white,
                  boxShadow: [...OtherSharedValues.SectionShadow]
              ),
              child:Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 35,height: 35,child: Image.memory(ImageFromSvg.Details())),
                        Text("Change Details"),
                      ],

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(width: 35,height: 35,child: Image.memory(ImageFromSvg.Failed())),
                        Text("Failed"),
                      ],

                    ),
                  ],
                ),
              ),
            ),
            // Expanded(
            //   child: ListView.builder(itemCount: 50 ,itemBuilder: (BuildContext context, int idx){
            //     return Container(
            //       margin: EdgeInsets.only(bottom: 10),
            //       height: 75,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.all(Radius.circular(10)),
            //           color : Colors.white,
            //           boxShadow: [...OtherSharedValues.SectionShadow]
            //       ),
            //       child:Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Column(
            //             children: [
            //
            //             ],
            //
            //           )
            //         ],
            //       ),
            //     );
            //   }),
            // )
          ],
        ),
      ),
    );
  }
}
