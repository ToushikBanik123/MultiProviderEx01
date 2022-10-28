import 'package:flutter/material.dart';
import 'package:multi_provider_test/Provider/Home_Provider.dart';
import 'package:multi_provider_test/Provider/Home_Slider_Provider2.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  //double val = 0.4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<HomeProvider>(builder: (context, provider , child){
            return Slider(
                value: provider.val,
                onChanged: (v){
                  provider.setValue(v);
                }
            );
          }),
          Consumer<HomeProvider>(builder: (context, provider, child){
            return Container(
              margin: EdgeInsets.all(20),
              height: 100,
              width: double.infinity,
              color: Colors.orange.withOpacity(provider.val),
            );
          }),
          Consumer<HomeSliderProvider2>(builder: (context, provider, child){
            return Slider(
                value: provider.value,
                onChanged: (val){
                  provider.setVal(val);
                }
            );
          }),
          Consumer<HomeSliderProvider2>(builder: (context,provider,child){
            return Container(
              margin: EdgeInsets.all(15),
              height: 100,
              width: double.infinity,
              color: Colors.red.withOpacity(provider.value),
            );
          }),

          
        ],
      ),
    );
  }
}
