import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/img_detail_product.png'),
          SafeArea(
            child: Positioned(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Image.asset('assets/icons/ic_back.png'),
                        ),
                        const Text(
                          'Detail',
                          style: TextStyle(
                            color: Color(0xff4A4543),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/icons/ic_love_2.png'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset('assets/icons/ic_share.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 9.0,
                      left: 20.0,
                      right: 20.0,
                      bottom: 32.0,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset('assets/icons/ic_rectangle.png'),
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'Wooden Coff',
                              style: TextStyle(
                                color: Color(0xff4A4543),
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0,
                              ),
                            ),
                            Text(
                              '\$240',
                              style: TextStyle(
                                color: Color(0xff9A9390),
                                fontSize: 26.0,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 9.0),
                        Image.asset('assets/icons/ic_score_rating.png'),
                        const SizedBox(height: 21.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Choose a color :',
                              style: TextStyle(
                                color: Color(0xff7A8D9C),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.0,
                              ),
                            ),
                            Image.asset('assets/icons/ic_color_pallete.png'),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Select Quality :',
                              style: TextStyle(
                                color: Color(0xff7A8D9C),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.0,
                              ),
                            ),
                            Image.asset('assets/icons/ic_counter.png'),
                          ],
                        ),
                        const SizedBox(height: 28.0),
                        const Text(
                          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
                          style: TextStyle(
                            color: Color(0xffADADAD),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0,
                          ),
                        ),
                        const SizedBox(height: 46.0),
                        SizedBox(
                          height: 48.0,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff9A9390),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                            child: const Text(
                              'ADD TO CART',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
