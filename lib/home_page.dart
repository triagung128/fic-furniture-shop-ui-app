import 'package:fic_furniture_shop/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  static const List<Tab> tabs = <Tab>[
    Tab(text: 'All'),
    Tab(text: 'Living Room'),
    Tab(text: 'Bedroom'),
    Tab(text: 'Dining Room'),
    Tab(text: 'Kitchen'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Image.asset('assets/icons/ic_drawer.png'),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/ic_search.png'),
            onPressed: () {},
          ),
        ],
        title: const Text(
          'Home',
          style: TextStyle(
            color: Color(0xff4A4543),
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
            letterSpacing: 1.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 14.0, top: 32.0),
            child: const Text(
              'Discover the most\nmodern furniture',
              style: TextStyle(
                fontSize: 22.0,
                color: Color(0xff4A4543),
                fontWeight: FontWeight.w500,
                letterSpacing: 1.0,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.only(left: 14.0),
            height: 33.0,
            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.transparent,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xff9A9390),
              ),
              unselectedLabelColor: const Color(0xff4A4543),
              labelColor: const Color(0xffFFFFFF),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12.0,
                letterSpacing: 1.0,
              ),
              controller: _tabController,
              tabs: tabs,
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: tabs.map((Tab tab) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Recommended Furnitures',
                        style: TextStyle(
                          color: Color(0xff4A4543),
                          fontSize: 16.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 19),
                      Expanded(
                        child: GridView.count(
                          childAspectRatio: 0.73,
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          children: const [
                            ProductCard(
                              image: 'assets/images/img_product_1.png',
                              name: 'Stylish Chair',
                              price: '\$170',
                              rating: '4.8',
                            ),
                            ProductCard(
                              image: 'assets/images/img_product_2.png',
                              name: 'Modern Table',
                              price: '\$75',
                              rating: '4.9',
                            ),
                            ProductCard(
                              image: 'assets/images/img_product_3.png',
                              name: 'Wooden Console',
                              price: '\$240',
                              rating: '4.7',
                            ),
                            ProductCard(
                              image: 'assets/images/img_product_4.png',
                              name: 'Brown Armchair',
                              price: '\$210',
                              rating: '4.9',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: const Color(0xffFFFFFF),
        selectedItemColor: const Color(0xff9A9390),
        unselectedItemColor: const Color(0xffBBBBBB),
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/ic_home.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/ic_cart.png'),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/ic_favorite.png'),
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/ic_profile.png'),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String rating;

  const ProductCard({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const DetailPage()),
        );
      },
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                child: Image(
                  image: AssetImage(image),
                ),
              ),
              Positioned(
                top: 5.0,
                left: 5.0,
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/icons/ic_love.png'),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 12.0,
              left: 14.0,
              right: 14.0,
              bottom: 14.0,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              color: Color(0xffFFFFFF),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Color(0xff4A4543),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.0,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        color: Color(0xff9A9390),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.0,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.star,
                          size: 15.0,
                          color: Color(0xffEEA427),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          rating,
                          style: const TextStyle(
                            color: Color(0xffBBBBBB),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0,
                          ),
                        )
                      ],
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
