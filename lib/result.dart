import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {Key? key, required this.result, required this.ismale, required this.age})
      : super(key: key);

  final double result;
  final bool ismale;
  final int age;

  String get resultphrase{
    String resulttext ="";
    if(result>= 30 ) resulttext='Obese';
    else if(result>25 && result<30) resulttext ="Over weight";
    else if(result>18.5 && result<24.9) resulttext ="Normal";
    else resulttext ="Thin";
    return resulttext;


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result" ),centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Gender:${ismale ? 'Male' : 'Female'}",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "Result:${result.toStringAsFixed(1)}",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "Age:${age.toStringAsFixed(1)}",
              style:Theme.of(context).textTheme.headline2 ,

            ),
            Text(
              "Healthiness:${resultphrase}",
              style:Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center
              ,
            ),



          ],
        ),
      )),
    );
  }
}
