import 'package:cakeshop/Screens/buttomBar.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const OnBoardingScreen({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Text(
            title,
            style:Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 20.0),
          Text(
            subtitle,
            style:Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 150,
          ),
        ],
      ),
    );
  }
}

class OnBoaringPage extends StatefulWidget {
  @override
  _OnBoaringPageState createState() => _OnBoaringPageState();
}

class _OnBoaringPageState extends State<OnBoaringPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: const [
              OnBoardingScreen(
                image: 'assets/images/l1.jpg',
                title: 'CUSTOM YOUR CAKE',
                subtitle:
                    'Custome your cake is you like, whenever you want from bread to tapping, Everything',
              ),
              OnBoardingScreen(
                image: 'assets/images/l2.jpg',
                title: 'ORDER FROM YOUR HOME',
                subtitle:
                    "Wanna eat some cake while you're on your couch? Order your favorite cake from your home",
              ),
              OnBoardingScreen(
                image: 'assets/images/l3.jpg',
                title: 'EASE TO USE',
                subtitle:
                    'Simple and easy to use. Manage your orders your accounts',
              ),
            ],
          ),
          Positioned(
            left: 16.0,
            right: 16.0,
            bottom: 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentPage != 2)
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomPages()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text('SKIP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            height: 2,
                            color: Colors.black,
                          )),
                    ),
                  ),
                Row(
                  children: [
                    for (int i = 0; i < 3; i++)
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        width: _currentPage == i ? 16.0 : 8.0,
                        height: 8.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == i
                              ? Colors.blue
                              : Colors.grey[400],
                        ),
                      ),
                    const SizedBox(width: 8.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 90, right: 20),
                      child: InkWell(
                        onTap: () {
                          if (_currentPage == 2) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BottomPages()),
                            );
                          } else {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          }
                        },
                        child: Text(_currentPage == 2 ? 'GET STARTED' : 'NEXT',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              height: 2,
                              color: Colors.blue,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
