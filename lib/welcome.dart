//import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:rentify/login%20page/login.dart';
import 'package:rentify/welcome_data.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int currectindex = 0;
  late final PageController _controller;

  bool onLastPage = false;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (int index) {
                  setState(() {
                    currectindex = index;
                    onLastPage = (index == 3);
                  });
                },
                itemCount: contents.length,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(45),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Image.asset(
                          contents[i].image,
                          height: 267,
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          contents[i].title,
                          style: TextStyle(
                              fontSize: 23,
                              fontFamily: "poppins",
                              fontWeight: FontWeight.w600,
                              color: Color(0xff107793)),
                        ),
                        Divider(color: Color(0xFF16A6CC)),
                        SizedBox(height: 5),
                        Text(
                          contents[i].deskripsi,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF107793)),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 20,
              margin: EdgeInsetsDirectional.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WelcomeNavBtn(
                    name: 'Skip',
                    onPressed: () {
                      _controller.jumpToPage(3);
                    },
                  ),
                  SizedBox(width: 60),
                  Row(
                    children: List.generate(
                      contents.length,
                      (index) => buildDot(index, context),
                    ),
                  ),
                  SizedBox(width: 60),
                  if (onLastPage == true) ...[
                    WelcomeNavBtn(
                      name: 'Done',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ),
                        );
                      },
                    ),
                  ] else ...[
                    WelcomeNavBtn(
                      name: 'Next',
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                  ],
                ],
              ),
            )
          ],
        ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currectindex == index ? 20 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff16A6CC),
      ),
    );
  }
}

class WelcomeNavBtn extends StatelessWidget {
  const WelcomeNavBtn({
    super.key,
    required this.name,
    required this.onPressed,
  });
  final String name;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Colors.black12,
      child: Text(
        name,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          color: Color(0xff16A6CC),
        ),
      ),
    );
  }
}


// class WelcomePage extends StatelessWidget {
//   final _controller = PageController();
//   WelcomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
 
         
//      
//     );
//   }
// }
