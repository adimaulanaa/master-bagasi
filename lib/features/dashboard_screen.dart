import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:product/features/discuss_product_screen.dart';
import 'package:product/features/utils/colors.dart';
import 'package:product/features/utils/model.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;
  bool isHome = true;
  bool isSajian = false;
  bool isNusan = false;
  bool isMbestie = false;
  bool isWishlist = false;
  bool isMenu = false;
  //! love
  bool loveBrandOne = false;
  bool loveBrandSecond = false;
  bool loveCemilanOne = false;
  bool loveCemilanSecond = false;
  bool loveTerlarisOne = false;
  bool loveTerlarisSecond = false;
  bool loveKopiTehOne = false;
  bool loveKopiTehSecond = false;

  List<ProductCategory> producCat = [
    ProductCategory(
        image: "assets/images/img-catg-prdct.png",
        text: "Siap Saji Ala Kaki Lima"),
    ProductCategory(
        image: "assets/images/img-catg-prdct-1.png",
        text: "Cemilan Buat Rebahan"),
    ProductCategory(
        image: "assets/images/img-catg-prdct-2.png",
        text: "Mie Instant Rasa Nusantara"),
    ProductCategory(
        image: "assets/images/img-catg-prdct-3.png",
        text: "Teh & Kopi Rasa Nusantara"),
    ProductCategory(
        image: "assets/images/img-catg-prdct-4.png",
        text: "Minuman Segar & Herbal"),
    ProductCategory(
        image: "assets/images/img-catg-prdct-5.png",
        text: "Rempah & Bumbu Dapur"),
    ProductCategory(
        image: "assets/images/img-catg-prdct-6.png",
        text: "Bumbu Penyedap Rasa"),
  ];
  List<ProductBrands> producBrands = [
    ProductBrands(image: "assets/images/brands-wardah-1.png", text: "Indofood"),
    ProductBrands(image: "assets/images/brands-wardah-2.png", text: "Bamboe"),
    ProductBrands(image: "assets/images/brands-wardah-3.png", text: "Indomie"),
    ProductBrands(
        image: "assets/images/brands-wardah-4.png", text: "Ajinomoto"),
    ProductBrands(image: "assets/images/brands-wardah-5.png", text: "Finna"),
    ProductBrands(image: "assets/images/brands-wardah-6.png", text: "ABC"),
    ProductBrands(
        image: "assets/images/brands-wardah-7.png", text: "Eat Sambel"),
    ProductBrands(image: "assets/images/brands-wardah-8.png", text: "Bon Cabe"),
    ProductBrands(image: "assets/images/brands-wardah-9.png", text: "Cap Lang"),
    ProductBrands(
        image: "assets/images/brands-wardah-10.png", text: "Bapper Food"),
    ProductBrands(image: "assets/images/brands-wardah-11.png", text: "Bango"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: appBar(size),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.23,
              margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                "assets/images/banner_up_dashboard.png",
                height: 30,
                width: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Kategori Produk Indonesia',
                style: TextStyle(
                  color: AppColors.dashColorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            categoryMethod(size),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              height: size.height * 0.24,
              margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage("assets/images/background-brand.png"),
                  fit: BoxFit.cover, // Penyesuaian gambar
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15, top: 13, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Brand Asli Indonesia',
                          style: TextStyle(
                            color: AppColors.dashColorBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Lihat Semua',
                          style: TextStyle(
                            color: AppColors.dashColorOrange,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  brandsMethod(size)
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            viralMethod(size),
            Container(
              width: size.width,
              height: size.height * 0.24,
              margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage("assets/images/background-viral-1.png"),
                  fit: BoxFit.cover, // Penyesuaian gambar
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'Cek Tarif ke Negara Lainnya',
                style: TextStyle(
                  color: AppColors.dashColorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              height: size.height * 0.24,
              margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
              padding: const EdgeInsets.only(left: 15, top: 13, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage("assets/images/check-tarif.png"),
                  fit: BoxFit.cover, // Penyesuaian gambar
                ),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Isi Dapur Indonesia',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                          color: AppColors.dashColorOrange,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            cemilanMethod(size),
            const SizedBox(
              height: 5,
            ),
            brandPilihanMethod(size),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lebih Hemat Dengan Bundling',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Lihat Semua',
                    style: TextStyle(
                      color: AppColors.dashColorOrange,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
              child: Image.asset("assets/images/bundling.png"),
            ),
            const SizedBox(
              height: 5,
            ),
            terlarisMethod(size),
            const SizedBox(
              height: 5,
            ),
            fashionMethod(size),
            Container(
              width: size.width,
              height: size.height * 0.24,
              margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
              padding: const EdgeInsets.only(left: 15, top: 13, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage("assets/images/krajinan-tangan-anak.png"),
                  fit: BoxFit.cover, // Penyesuaian gambar
                ),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kerajinan Tangan Anak Bangsa',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                          color: AppColors.dashColorOrange,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            kopiTehMethod(size),
            const SizedBox(
              height: 5,
            ),
            beautifulMethod(size),
            const SizedBox(
              height: 5,
            ),
            fesyaMethod(size),
            const SizedBox(
              height: 5,
            ),
            forYouMethod(size),
            SizedBox(
              height: size.height * 0.1,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: size.width,
        height: size.height * 0.08,
        color: AppColors.dashColorGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setNavBar(0);
                setState(() {});
              },
              child: Container(
                height: size.height,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: isHome
                      ? AppColors.dashColorWhite
                      : AppColors.dashColorGrey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/home.svg',
                      height: 20,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Home',
                      style: TextStyle(
                        color: AppColors.dashColorBlackSecond,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setNavBar(1);
              },
              child: Container(
                height: size.height,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: isSajian
                      ? AppColors.dashColorWhite
                      : AppColors.dashColorGrey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/sajian.svg',
                      height: 20,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Sajian',
                      style: TextStyle(
                        color: AppColors.dashColorBlackSecond,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setNavBar(2);
              },
              child: Container(
                height: size.height,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: isNusan
                      ? AppColors.dashColorWhite
                      : AppColors.dashColorGrey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/nusantara.svg',
                      height: 20,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Nusantara',
                      style: TextStyle(
                        color: AppColors.dashColorBlackSecond,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setNavBar(3);
              },
              child: Container(
                height: size.height,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: isMbestie
                      ? AppColors.dashColorWhite
                      : AppColors.dashColorGrey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/mbestie.svg',
                      height: 20,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'MBestie',
                      style: TextStyle(
                        color: AppColors.dashColorBlackSecond,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setNavBar(4);
              },
              child: Container(
                height: size.height,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: isWishlist
                      ? AppColors.dashColorWhite
                      : AppColors.dashColorGrey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/wishlist.svg',
                      height: 20,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Wishlist',
                      style: TextStyle(
                        color: AppColors.dashColorBlackSecond,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setNavBar(5);
              },
              child: Container(
                height: size.height,
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: isMenu
                      ? AppColors.dashColorWhite
                      : AppColors.dashColorGrey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/menu.svg',
                      height: 20,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Menu',
                      style: TextStyle(
                        color: AppColors.dashColorBlackSecond,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setNavBar(int index) {
    if (index == 0) {
      isHome = true;
      isSajian = false;
      isNusan = false;
      isMbestie = false;
      isWishlist = false;
      isMenu = false;
    } else if (index == 1) {
      isHome = false;
      isSajian = true;
      isNusan = false;
      isMbestie = false;
      isWishlist = false;
      isMenu = false;
    } else if (index == 2) {
      isHome = false;
      isSajian = false;
      isNusan = true;
      isMbestie = false;
      isWishlist = false;
      isMenu = false;
    } else if (index == 3) {
      isHome = false;
      isSajian = false;
      isNusan = false;
      isMbestie = true;
      isWishlist = false;
      isMenu = false;
    } else if (index == 4) {
      isHome = false;
      isSajian = false;
      isNusan = false;
      isMbestie = false;
      isWishlist = true;
      isMenu = false;
    } else if (index == 5) {
      isHome = false;
      isSajian = false;
      isNusan = false;
      isMbestie = false;
      isWishlist = false;
      isMenu = true;
    }
    setState(() {});
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Container beautifulMethod(Size size) {
    return Container(
      width: size.width,
      height: size.height * 0.34,
      margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
      padding: const EdgeInsets.only(left: 15, top: 13, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: AssetImage("assets/images/background-beautiful.png"),
          fit: BoxFit.cover, // Penyesuaian gambar
        ),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Brand Kecantikan Indonesia',
                style: TextStyle(
                  color: AppColors.dashColorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Lihat Semua',
                style: TextStyle(
                  color: AppColors.dashColorOrange,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  height: size.height * 0.19,
                  width: size.width * 0.304,
                ),
                Container(
                  height: size.height * 0.22,
                  width: size.width * 0.304,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.dashColorWhite.withOpacity(0.6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.dashColorWhite,
                        ),
                        child: Image.asset("assets/images/beautiful-1.png"),
                      ),
                      const Expanded(child: SizedBox()),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'MS Glow',
                          style: TextStyle(
                            color: AppColors.dashColorBlack,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: size.height * 0.22,
                  width: size.width * 0.304,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.dashColorWhite.withOpacity(0.6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.dashColorWhite,
                        ),
                        child: Image.asset("assets/images/beautiful-2.png"),
                      ),
                      const Expanded(child: SizedBox()),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Scarlett',
                          style: TextStyle(
                            color: AppColors.dashColorBlack,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: size.height * 0.22,
                  width: size.width * 0.304,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.dashColorWhite.withOpacity(0.6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.dashColorWhite,
                        ),
                        child: Image.asset("assets/images/beautiful-3.png"),
                      ),
                      const Expanded(child: SizedBox()),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'MS Glow',
                          style: TextStyle(
                            color: AppColors.dashColorBlack,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: size.height * 0.22,
                  width: size.width * 0.304,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.dashColorWhite.withOpacity(0.6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.dashColorWhite,
                        ),
                        child: Image.asset("assets/images/beautiful-4.png"),
                      ),
                      const Expanded(child: SizedBox()),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Scarlett',
                          style: TextStyle(
                            color: AppColors.dashColorBlack,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container fashionMethod(Size size) {
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: AssetImage("assets/images/background-fashion.png"),
          fit: BoxFit.cover, // Penyesuaian gambar
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 13, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Brand Fashion Pilihan',
                  style: TextStyle(
                    color: AppColors.dashColorWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(
                    color: AppColors.dashColorOrange,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.44,
                  child: Image.asset("assets/images/fashion-1.png"),
                ),
                SizedBox(
                  width: size.width * 0.44,
                  child: Image.asset("assets/images/fashion-2.png"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.44,
                  child: Image.asset("assets/images/fashion-1.png"),
                ),
                SizedBox(
                  width: size.width * 0.44,
                  child: Image.asset("assets/images/fashion-2.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Stack brandPilihanMethod(Size size) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
              child: Image.asset("assets/images/chose-brand-1.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Image.asset("assets/images/chose-brand-2.png"),
            ),
          ],
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Brand Pilihan',
                    style: TextStyle(
                      color: AppColors.dashColorWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Lihat Semua',
                    style: TextStyle(
                      color: AppColors.dashColorOrange,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Container(
                    height: size.height * 0.19,
                    width: size.width * 0.304,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.zero),
                      color: AppColors.dashColorWhite,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/chose-1.png"),
                        Container(
                          width: size.width,
                          height: 1,
                          color: AppColors.dashColorBlackSecond,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            'Produk Brand Sponsor',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: size.height * 0.19,
                    width: size.width * 0.304,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.zero),
                      color: AppColors.dashColorWhite,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/chose-2.png"),
                        Container(
                          width: size.width,
                          height: 1,
                          color: AppColors.dashColorBlackSecond,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            'Produk Brand Sponsor',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: size.height * 0.19,
                    width: size.width * 0.304,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.zero),
                      color: AppColors.dashColorWhite,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/chose-3.png"),
                        Container(
                          width: size.width,
                          height: 1,
                          color: AppColors.dashColorBlackSecond,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            'Produk Brand Sponsor',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  Stack viralMethod(Size size) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.23,
          margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage("assets/images/background-viral.png"),
              fit: BoxFit.cover, // Penyesuaian gambar
            ),
          ),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 13, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lagi Viral',
                      style: TextStyle(
                        color: AppColors.dashColorWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                        color: AppColors.dashColorOrange,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding:
              EdgeInsets.only(top: size.height * 0.07, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.38,
                width: size.width * 0.43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.zero),
                  color: AppColors.dashColorWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/viral-1.png"),
                    Container(
                      width: size.width,
                      height: 1,
                      color: AppColors.dashColorBlackSecond,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Sariwangi - Teh Celup Asli',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rp135.000',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 20,
                                color: AppColors.dashColorBlackSecond,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '400g',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'terjual 1260',
                        style: TextStyle(
                          color: AppColors.dashColorBlackSecond,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loveBrandSecond) {
                                loveBrandSecond = false;
                              } else {
                                loveBrandSecond = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.dashColorGrey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  "assets/images/viral-love.png",
                                  width: 20,
                                  height: 20,
                                  color: loveBrandSecond
                                      ? AppColors.dashColorOrange
                                      : AppColors.dashColorBlackSecond,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.dashColorWhite,
                              border: Border.all(
                                color: AppColors.dashColorOrange,
                              ),
                            ),
                            child: const Text(
                              '+ Keranjang',
                              style: TextStyle(
                                color: AppColors.dashColorOrange,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: size.height * 0.38,
                width: size.width * 0.43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.zero),
                  color: AppColors.dashColorWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/viral-2.png"),
                    Container(
                      width: size.width,
                      height: 1,
                      color: AppColors.dashColorBlackSecond,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Sariwangi - Teh Celup Asli',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rp135.000',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 20,
                                color: AppColors.dashColorBlackSecond,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '400g',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'terjual 1260',
                        style: TextStyle(
                          color: AppColors.dashColorBlackSecond,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loveBrandOne) {
                                loveBrandOne = false;
                              } else {
                                loveBrandOne = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.dashColorGrey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  "assets/images/viral-love.png",
                                  width: 20,
                                  height: 20,
                                  color: loveBrandOne
                                      ? AppColors.dashColorOrange
                                      : AppColors.dashColorBlackSecond,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.dashColorWhite,
                              border: Border.all(
                                color: AppColors.dashColorOrange,
                              ),
                            ),
                            child: const Text(
                              '+ Keranjang',
                              style: TextStyle(
                                color: AppColors.dashColorOrange,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Stack cemilanMethod(Size size) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.23,
          margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage("assets/images/background-viral.png"),
              fit: BoxFit.cover, // Penyesuaian gambar
            ),
          ),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 13, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cemilan Buat Rebahan',
                      style: TextStyle(
                        color: AppColors.dashColorWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                        color: AppColors.dashColorOrange,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding:
              EdgeInsets.only(top: size.height * 0.07, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.38,
                width: size.width * 0.43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.zero),
                  color: AppColors.dashColorWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/cemilan-1.png"),
                    Container(
                      width: size.width,
                      height: 1,
                      color: AppColors.dashColorBlackSecond,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Sariwangi - Teh Celup Asli',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rp135.000',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 20,
                                color: AppColors.dashColorBlackSecond,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '400g',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'terjual 1260',
                        style: TextStyle(
                          color: AppColors.dashColorBlackSecond,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loveCemilanOne) {
                                loveCemilanOne = false;
                              } else {
                                loveCemilanOne = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.dashColorGrey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  "assets/images/viral-love.png",
                                  width: 20,
                                  height: 20,
                                  color: loveCemilanOne
                                      ? AppColors.dashColorOrange
                                      : AppColors.dashColorBlackSecond,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.dashColorWhite,
                              border: Border.all(
                                color: AppColors.dashColorOrange,
                              ),
                            ),
                            child: const Text(
                              '+ Keranjang',
                              style: TextStyle(
                                color: AppColors.dashColorOrange,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: size.height * 0.38,
                width: size.width * 0.43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.zero),
                  color: AppColors.dashColorWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/cemilan-2.png"),
                    Container(
                      width: size.width,
                      height: 1,
                      color: AppColors.dashColorBlackSecond,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Sariwangi - Teh Celup Asli',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rp135.000',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 20,
                                color: AppColors.dashColorBlackSecond,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '400g',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'terjual 1260',
                        style: TextStyle(
                          color: AppColors.dashColorBlackSecond,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loveCemilanSecond) {
                                loveCemilanSecond = false;
                              } else {
                                loveCemilanSecond = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.dashColorGrey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  "assets/images/viral-love.png",
                                  width: 20,
                                  height: 20,
                                  color: loveCemilanSecond
                                      ? AppColors.dashColorOrange
                                      : AppColors.dashColorBlackSecond,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.dashColorWhite,
                              border: Border.all(
                                color: AppColors.dashColorOrange,
                              ),
                            ),
                            child: const Text(
                              '+ Keranjang',
                              style: TextStyle(
                                color: AppColors.dashColorOrange,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Stack terlarisMethod(Size size) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.23,
          margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage("assets/images/background-viral.png"),
              fit: BoxFit.cover, // Penyesuaian gambar
            ),
          ),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 13, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Terlaris di Master Bagasi',
                      style: TextStyle(
                        color: AppColors.dashColorWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                        color: AppColors.dashColorOrange,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding:
              EdgeInsets.only(top: size.height * 0.07, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.38,
                width: size.width * 0.43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.zero),
                  color: AppColors.dashColorWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/terlaris-1.png"),
                    Container(
                      width: size.width,
                      height: 1,
                      color: AppColors.dashColorBlackSecond,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Sariwangi - Teh Celup Asli',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rp135.000',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 20,
                                color: AppColors.dashColorBlackSecond,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '400g',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'terjual 1260',
                        style: TextStyle(
                          color: AppColors.dashColorBlackSecond,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loveTerlarisOne) {
                                loveTerlarisOne = false;
                              } else {
                                loveTerlarisOne = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.dashColorGrey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  "assets/images/viral-love.png",
                                  width: 20,
                                  height: 20,
                                  color: loveTerlarisOne
                                      ? AppColors.dashColorOrange
                                      : AppColors.dashColorBlackSecond,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.dashColorWhite,
                              border: Border.all(
                                color: AppColors.dashColorOrange,
                              ),
                            ),
                            child: const Text(
                              '+ Keranjang',
                              style: TextStyle(
                                color: AppColors.dashColorOrange,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: size.height * 0.38,
                width: size.width * 0.43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.zero),
                  color: AppColors.dashColorWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/terlaris-2.png"),
                    Container(
                      width: size.width,
                      height: 1,
                      color: AppColors.dashColorBlackSecond,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Sariwangi - Teh Celup Asli',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rp135.000',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 20,
                                color: AppColors.dashColorBlackSecond,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '400g',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'terjual 1260',
                        style: TextStyle(
                          color: AppColors.dashColorBlackSecond,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loveTerlarisSecond) {
                                loveTerlarisSecond = false;
                              } else {
                                loveTerlarisSecond = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.dashColorGrey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  "assets/images/viral-love.png",
                                  width: 20,
                                  height: 20,
                                  color: loveTerlarisSecond
                                      ? AppColors.dashColorOrange
                                      : AppColors.dashColorBlackSecond,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.dashColorWhite,
                              border: Border.all(
                                color: AppColors.dashColorOrange,
                              ),
                            ),
                            child: const Text(
                              '+ Keranjang',
                              style: TextStyle(
                                color: AppColors.dashColorOrange,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Stack kopiTehMethod(Size size) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.23,
          margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage("assets/images/background-viral.png"),
              fit: BoxFit.cover, // Penyesuaian gambar
            ),
          ),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 13, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kopi & Teh Asli Indonesia',
                      style: TextStyle(
                        color: AppColors.dashColorWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                        color: AppColors.dashColorOrange,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding:
              EdgeInsets.only(top: size.height * 0.07, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.38,
                width: size.width * 0.43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.zero),
                  color: AppColors.dashColorWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/kopi-teh-1.png"),
                    Container(
                      width: size.width,
                      height: 1,
                      color: AppColors.dashColorBlackSecond,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Sariwangi - Teh Celup Asli',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rp135.000',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 20,
                                color: AppColors.dashColorBlackSecond,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '400g',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'terjual 1260',
                        style: TextStyle(
                          color: AppColors.dashColorBlackSecond,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loveKopiTehOne) {
                                loveKopiTehOne = false;
                              } else {
                                loveKopiTehOne = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.dashColorGrey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  "assets/images/viral-love.png",
                                  width: 20,
                                  height: 20,
                                  color: loveKopiTehOne
                                      ? AppColors.dashColorOrange
                                      : AppColors.dashColorBlackSecond,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.dashColorWhite,
                              border: Border.all(
                                color: AppColors.dashColorOrange,
                              ),
                            ),
                            child: const Text(
                              '+ Keranjang',
                              style: TextStyle(
                                color: AppColors.dashColorOrange,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: size.height * 0.38,
                width: size.width * 0.43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.zero),
                  color: AppColors.dashColorWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/kopi-teh-2.png"),
                    Container(
                      width: size.width,
                      height: 1,
                      color: AppColors.dashColorBlackSecond,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Sariwangi - Teh Celup Asli',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rp135.000',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 20,
                                color: AppColors.dashColorBlackSecond,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '400g',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'terjual 1260',
                        style: TextStyle(
                          color: AppColors.dashColorBlackSecond,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loveKopiTehSecond) {
                                loveKopiTehSecond = false;
                              } else {
                                loveKopiTehSecond = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.dashColorGrey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  "assets/images/viral-love.png",
                                  width: 20,
                                  height: 20,
                                  color: loveKopiTehSecond
                                      ? AppColors.dashColorOrange
                                      : AppColors.dashColorBlackSecond,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.dashColorWhite,
                              border: Border.all(
                                color: AppColors.dashColorOrange,
                              ),
                            ),
                            child: const Text(
                              '+ Keranjang',
                              style: TextStyle(
                                color: AppColors.dashColorOrange,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Stack fesyaMethod(Size size) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.23,
          margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage("assets/images/background-viral.png"),
              fit: BoxFit.cover, // Penyesuaian gambar
            ),
          ),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 13, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Produk Fesyen Indonesia',
                      style: TextStyle(
                        color: AppColors.dashColorWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                        color: AppColors.dashColorOrange,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding:
              EdgeInsets.only(top: size.height * 0.07, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.38,
                width: size.width * 0.43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.zero),
                  color: AppColors.dashColorWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/fesyen-1.png"),
                    Container(
                      width: size.width,
                      height: 1,
                      color: AppColors.dashColorBlackSecond,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Sariwangi - Teh Celup Asli',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rp135.000',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 20,
                                color: AppColors.dashColorBlackSecond,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '400g',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'terjual 1260',
                        style: TextStyle(
                          color: AppColors.dashColorBlackSecond,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loveKopiTehOne) {
                                loveKopiTehOne = false;
                              } else {
                                loveKopiTehOne = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.dashColorGrey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  "assets/images/viral-love.png",
                                  width: 20,
                                  height: 20,
                                  color: loveKopiTehOne
                                      ? AppColors.dashColorOrange
                                      : AppColors.dashColorBlackSecond,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.dashColorWhite,
                              border: Border.all(
                                color: AppColors.dashColorOrange,
                              ),
                            ),
                            child: const Text(
                              '+ Keranjang',
                              style: TextStyle(
                                color: AppColors.dashColorOrange,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: size.height * 0.38,
                width: size.width * 0.43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.zero),
                  color: AppColors.dashColorWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/fesyen-2.png"),
                    Container(
                      width: size.width,
                      height: 1,
                      color: AppColors.dashColorBlackSecond,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Sariwangi - Teh Celup Asli',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rp135.000',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 20,
                                color: AppColors.dashColorBlackSecond,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '400g',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'terjual 1260',
                        style: TextStyle(
                          color: AppColors.dashColorBlackSecond,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loveKopiTehSecond) {
                                loveKopiTehSecond = false;
                              } else {
                                loveKopiTehSecond = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.dashColorGrey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  "assets/images/viral-love.png",
                                  width: 20,
                                  height: 20,
                                  color: loveKopiTehSecond
                                      ? AppColors.dashColorOrange
                                      : AppColors.dashColorBlackSecond,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.dashColorWhite,
                              border: Border.all(
                                color: AppColors.dashColorOrange,
                              ),
                            ),
                            child: const Text(
                              '+ Keranjang',
                              style: TextStyle(
                                color: AppColors.dashColorOrange,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Stack forYouMethod(Size size) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.23,
          margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage("assets/images/background-viral.png"),
              fit: BoxFit.cover, // Penyesuaian gambar
            ),
          ),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 13, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hanya Untuk Kamu',
                      style: TextStyle(
                        color: AppColors.dashColorWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                        color: AppColors.dashColorOrange,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding:
              EdgeInsets.only(top: size.height * 0.07, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.38,
                width: size.width * 0.43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.zero),
                  color: AppColors.dashColorWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/for-you-1.png"),
                    Container(
                      width: size.width,
                      height: 1,
                      color: AppColors.dashColorBlackSecond,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Sariwangi - Teh Celup Asli',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rp135.000',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 20,
                                color: AppColors.dashColorBlackSecond,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '400g',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'terjual 1260',
                        style: TextStyle(
                          color: AppColors.dashColorBlackSecond,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loveKopiTehOne) {
                                loveKopiTehOne = false;
                              } else {
                                loveKopiTehOne = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.dashColorGrey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  "assets/images/viral-love.png",
                                  width: 20,
                                  height: 20,
                                  color: loveKopiTehOne
                                      ? AppColors.dashColorOrange
                                      : AppColors.dashColorBlackSecond,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.dashColorWhite,
                              border: Border.all(
                                color: AppColors.dashColorOrange,
                              ),
                            ),
                            child: const Text(
                              '+ Keranjang',
                              style: TextStyle(
                                color: AppColors.dashColorOrange,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: size.height * 0.38,
                width: size.width * 0.43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.zero),
                  color: AppColors.dashColorWhite,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/for-you-2.png"),
                    Container(
                      width: size.width,
                      height: 1,
                      color: AppColors.dashColorBlackSecond,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Sariwangi - Teh Celup Asli',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rp135.000',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 20,
                                color: AppColors.dashColorBlackSecond,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '400g',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'terjual 1260',
                        style: TextStyle(
                          color: AppColors.dashColorBlackSecond,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              if (loveKopiTehSecond) {
                                loveKopiTehSecond = false;
                              } else {
                                loveKopiTehSecond = true;
                              }
                              setState(() {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.dashColorGrey,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  "assets/images/viral-love.png",
                                  width: 20,
                                  height: 20,
                                  color: loveKopiTehSecond
                                      ? AppColors.dashColorOrange
                                      : AppColors.dashColorBlackSecond,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.dashColorWhite,
                              border: Border.all(
                                color: AppColors.dashColorOrange,
                              ),
                            ),
                            child: const Text(
                              '+ Keranjang',
                              style: TextStyle(
                                color: AppColors.dashColorOrange,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  SingleChildScrollView brandsMethod(Size size) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: producBrands
            .map((e) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      Image.asset(
                        e.image.toString(),
                        width: size.width * 0.25,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        e.text.toString(),
                        style: const TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }

  SingleChildScrollView categoryMethod(Size size) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: producCat
            .map((e) => Column(
                  children: [
                    Image.asset(
                      e.image.toString(),
                      width: size.width * 0.4,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 15, right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.dashColorWhite,
                      ),
                      child: Text(
                        e.text.toString(),
                        style: const TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ))
            .toList(),
      ),
    );
  }

  AppBar appBar(Size size) {
    return AppBar(
        backgroundColor: AppColors.dashColorBlack,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: size.width * 0.5,
                    height: size.height * 0.07,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.dashColorBlackSecond,
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(
                          'assets/icons/search.svg',
                          height: 24,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Cari di Masterbagasi',
                          style: TextStyle(
                            color: AppColors.dashColorWhite,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: size.height * 0.07,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.dashColorWhite,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/transction.svg',
                        height: 24,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: size.height * 0.07,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.dashColorWhite,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/cart.svg',
                        height: 24,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DiscussProductScreen(),
                        ),
                      );
                      setState(() {});
                    },
                    child: Container(
                      height: size.height * 0.07,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.dashColorWhite,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/chat.svg',
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: size.width,
                height: size.height * 0.07,
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                color: AppColors.dashColorBlack,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(
                          'assets/icons/location.svg',
                          height: 40,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dikirim ke',
                              style: TextStyle(
                                color: AppColors.dashColorWhite,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'United Kingdom',
                              style: TextStyle(
                                color: AppColors.dashColorWhite,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'assets/icons/arrow_bottom.svg',
                          height: 9,
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.dashColorBlackSecond,
                        border: Border.all(
                          color: AppColors.dashColorWhite,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Kirim Barang Pribadi',
                            style: TextStyle(
                              color: AppColors.dashColorWhite,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(
                            'assets/icons/arrow_right.svg',
                            height: 14,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
