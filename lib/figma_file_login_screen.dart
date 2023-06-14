import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FigmaSampleLoginScreen extends StatefulWidget {
  const FigmaSampleLoginScreen({super.key});

  @override
  State<FigmaSampleLoginScreen> createState() => _FigmaSampleLoginScreenState();
}

class _FigmaSampleLoginScreenState extends State<FigmaSampleLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("design")),
      body: Stack(children: [
        
        Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: []),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Column(children: []),
              ),
            )
          ],
        )
      ]),
    );
  }
}

/*
 Container(
          child: Column(
        children: [
          SvgPicture.asset("assets/images/logo.svg",width: 200,height: 200,),
          Text(
            "JUNO WORX",
            style: TextStyle(
                fontSize: 48,

                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 0, 0, 1)),
          )
        ],
      )),

 */
