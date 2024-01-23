import 'package:baqa_atera/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const Padding(
              // padding: EdgeInsets.all(15.0),
              // childe
              // child: CircleAvatar(
              //   radius: 100,
              //   child: FlutterLogo(
              //     // style: FlutterLogoStyle.horizontal,
              //     duration: Duration(seconds: 3),
              //     curve: Curves.linear,
              //     size: 150,
              //   ),
              // backgroundImage:AssetImage(flu),
              // 'assets/images/cute-rabbit-flora-frame-cartoon-3205098.jpg'),
              // ),
              // ),
              const SizedBox(
                height: 10,
              ),
              // ignore: prefer_const_constructors
              Text(
                'Yousra Kajjan',

                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: AutofillHints.creditCardExpirationMonth,
                    // fontFamily: 'Hacen',
                    color: Colors.green,
                    //       fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Softwate Engineer',

                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: AutofillHints.creditCardExpirationMonth,
                    // fontFamily: 'Hacen',
                    color: Colors.green,
                    //       fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: prefer_const_constructors
              Text(
                'Application Develepor',
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontFamily: AutofillHints.creditCardExpirationMonth,

                    //     // ignore: prefer_const_constructors
                    color: primaryColorForAplication,
                    //     fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 200,
                height: 10,
                child: Divider(
                  color: Colors.green,
                ),
              ),
              Card(
                elevation: 10,
                margin: const EdgeInsets.all(20),
                // padding: EdgeInsets.all(10),
                // color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    // size: 200,
                    color: Colors.green[100]!,
                  ),
                  title: const Text(
                    ' 932374698  963+',
                    style: TextStyle(
                        fontSize: 20, color: Colors.black, fontFamily: 'Hacen'),
                  ),
                  onTap: () {
                    final Uri phoneUri = Uri(
                      scheme: 'tel',
                      path: '+963 932374698', // أضف رقم الهاتف هنا
                    );
                    launch(phoneUri.toString());
                  },
                ),
              ),
              //
              Card(
                elevation: 10,
                margin: const EdgeInsets.all(20),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.green[100]!,
                  ),
                  title: const Text(
                    'yousrakajjan@gmail.com ',
                    style: TextStyle(
                      fontSize: 20,
                      // color: Colors.black,
                      fontFamily: 'Hacen',
                    ),
                  ),
                  onTap: () async {
                    final Uri emailUri = Uri(
                      scheme: 'mailto',
                      path: 'y7752640@gmail.com', // أضف البريد الإلكتروني هنا
                    );
                    if (await canLaunch(emailUri.toString())) {
                      await launch(emailUri.toString());
                    } else {
                      throw 'Could not launch email';
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
