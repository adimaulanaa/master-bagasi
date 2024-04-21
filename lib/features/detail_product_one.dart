import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:product/features/utils/colors.dart';

class DetailProductOne extends StatefulWidget {
  const DetailProductOne({super.key});

  @override
  State<DetailProductOne> createState() => _DetailProductOneState();
}

class _DetailProductOneState extends State<DetailProductOne> {
  //! love
  bool loveOne = false;
  bool loveSecond = false;
  bool loveTree = false;
  bool loveFour = false;
  String desc =
      'Olahan Paru khas Aceh yang pedas membuat selera makan meningkat, bisa mengobati rasa kangen akan masakan Nusantara.\n\nOlahan Ikan Kayu khas Aceh yang pedas membuat selera makan meningkat, bisa mengobati rasa kangen akan masakan Nusantara.\n\nterdiri dari 1 Paru Pedas Aceh Spicy 250 gram 1 Ikan Kayu Aceh Spicy 250 gram';
  final TextEditingController _formController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: appBar(size),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(left: 5, right: 5),
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.dashColorWhite,
              ),
              child: Image.asset(
                "assets/images/detail-product-1.png",
                width: size.width * 0.17,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(left: 5, right: 5),
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.dashColorWhite,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      'Rp178.200',
                      style: TextStyle(
                        color: AppColors.dashColorBlack,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 1,
                        height: 30,
                        color: AppColors.dashColorGreySecond,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '0.35 Kg',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 1,
                        height: 30,
                        color: AppColors.dashColorGreySecond,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
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
                            color: AppColors.dashColorBlackSecond,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 1,
                        height: 30,
                        color: AppColors.dashColorGreySecond,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.dashColorGrey,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.asset(
                            "assets/images/share.png",
                            width: 20,
                            height: 20,
                            color: AppColors.dashColorBlackSecond,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            descriptionMethod(size),
            const SizedBox(
              height: 10,
            ),
            productDetailMethod(size),
            const SizedBox(
              height: 10,
            ),
            descMethod(size),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(left: 5, right: 5),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.dashColorWhite,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lainnya di Kategori ini',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
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
            categoryMethod(size),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/detail-product-banner.png",
              width: size.width,
            ),
            const SizedBox(
              height: 10,
            ),
            aboutBrandMethod(size),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(left: 5, right: 5),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.dashColorWhite,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lainnya di Kategori ini',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
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
            categoryMethod(size),
            const SizedBox(
              height: 10,
            ),
            discussMethod(size),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(left: 5, right: 5),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.dashColorWhite,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pilihan Lainnya Untukmu',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
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
            categoryMethod(size),
            SizedBox(
              height: size.height * 0.2,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: size.width,
        height: size.height * 0.1,
        color: AppColors.dashColorWhite,
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.dashColorWhite,
                border: Border.all(color: AppColors.dashColorBlack, width: 2),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/chat-discuss.svg',
                  width: 25,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.dashColorWhite,
                border: Border.all(color: AppColors.dashColorBlack, width: 2),
              ),
              child: const Center(
                child: Text(
                  'Beli Langsung',
                  style: TextStyle(
                    color: AppColors.dashColorBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.dashColorBlack,
              ),
              child: const Center(
                child: Text(
                  '+ Keranjang',
                  style: TextStyle(
                    color: AppColors.dashColorWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container discussMethod(Size size) {
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(left: 5, right: 5),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.dashColorWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Diskusi Produk',
            style: TextStyle(
              color: AppColors.dashColorBlack,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            width: size.width * 1,
            height: size.height * 0.08,
            decoration: BoxDecoration(
              color: AppColors.dashColorWhite,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SizedBox(
              width: size.width * 0.9,
              child: TextField(
                controller: _formController,
                onChanged: (value) {
                  setState(() {
                    _formController.text = value;
                  });
                },
                maxLines: 2,
                decoration: const InputDecoration(
                  hintText:
                      'Ingin bertanya mengenai produk ini dalam forum diskusi?',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                    left: 5,
                    top: 5,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            width: size.width,
            height: size.height * 0.07,
            margin: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.dashColorBlack,
            ),
            child: const Center(
              child: Text(
                'Tulis Pertanyan',
                style: TextStyle(
                  color: AppColors.dashColorWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  SingleChildScrollView categoryMethod(Size size) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
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
                Image.asset("assets/images/viral-3.png"),
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
                          if (loveOne) {
                            loveOne = false;
                          } else {
                            loveOne = true;
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
                              color: loveOne
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
          const SizedBox(
            width: 10,
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
                          if (loveSecond) {
                            loveSecond = false;
                          } else {
                            loveSecond = true;
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
                              color: loveSecond
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
          const SizedBox(
            width: 10,
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
                Image.asset("assets/images/viral-3.png"),
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
                          if (loveTree) {
                            loveTree = false;
                          } else {
                            loveTree = true;
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
                              color: loveTree
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
          const SizedBox(
            width: 10,
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
                          if (loveFour) {
                            loveFour = false;
                          } else {
                            loveFour = true;
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
                              color: loveFour
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
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  Container aboutBrandMethod(Size size) {
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(left: 5, right: 5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.dashColorWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tentang Brand',
            style: TextStyle(
              color: AppColors.dashColorBlack,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/detail-product-profile.png",
                width: size.width * 0.21,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.5,
                        child: const Text(
                          'DAPUR MAMI KIKAS',
                          style: TextStyle(
                            color: AppColors.dashColorBlack,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Image.asset(
                        "assets/images/plus.png",
                        width: size.width * 0.13,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Siap Saji Ala Kaki Lima',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Dapur Mami Kikas adalah dapur miliknya mamki Kikas, Masa engga tau? dia punya olahan aneka lauk siap saji yang almost terbuat dari daging, langsung sikat aja brayyy',
            style: TextStyle(
              color: AppColors.dashColorBlack,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Selengkapnya.....',
            style: TextStyle(
              color: AppColors.dashColorOrange,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Container descMethod(Size size) {
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(left: 5, right: 5),
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.dashColorWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Deskripsi Produk',
            style: TextStyle(
              color: AppColors.dashColorBlack,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            desc,
            style: const TextStyle(
              color: AppColors.dashColorBlack,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Container productDetailMethod(Size size) {
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(left: 5, right: 5),
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.dashColorWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Product Detail',
            style: TextStyle(
              color: AppColors.dashColorBlack,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Sertifikasi',
                style: TextStyle(
                  color: AppColors.dashColorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sertifikasi',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: size.width * 0.59,
                    height: 1,
                    color: AppColors.dashColorGreySecond,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Kategori',
                style: TextStyle(
                  color: AppColors.dashColorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sertifikasi',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: size.width * 0.59,
                    height: 1,
                    color: AppColors.dashColorGreySecond,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Provinsi',
                style: TextStyle(
                  color: AppColors.dashColorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nanggroe Aceh Darusallam',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: size.width * 0.59,
                    height: 1,
                    color: AppColors.dashColorGreySecond,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Brand',
                style: TextStyle(
                  color: AppColors.dashColorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dapur Mami Kikas',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: size.width * 0.59,
                    height: 1,
                    color: AppColors.dashColorGreySecond,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'SKU',
                style: TextStyle(
                  color: AppColors.dashColorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'A1532',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: size.width * 0.59,
                    height: 1,
                    color: AppColors.dashColorGreySecond,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Sustensi',
                style: TextStyle(
                  color: AppColors.dashColorBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '2 pcs x 125 gr',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: size.width * 0.59,
                    height: 1,
                    color: AppColors.dashColorGreySecond,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Container descriptionMethod(Size size) {
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(left: 5, right: 5),
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.dashColorWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dapur Mami Kikas - Paru Pedas Aceh dan Ikan Kayu Aceh',
            style: TextStyle(
              color: AppColors.dashColorBlack,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Select Variant',
            style: TextStyle(
              color: AppColors.dashColorBlack,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.dashColorBlack,
            ),
            child: const Text(
              'Bundling Paru Pedas & Ikan Kayu Aceh',
              style: TextStyle(
                color: AppColors.dashColorWhite,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.dashColorWhite,
                  border: Border.all(color: AppColors.dashColorBlack, width: 2),
                ),
                child: const Text(
                  'Paru Pedas Aceh',
                  style: TextStyle(
                    color: AppColors.dashColorBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.dashColorWhite,
                  border: Border.all(color: AppColors.dashColorBlack, width: 2),
                ),
                child: const Text(
                  'Ikan Kayu Aceh',
                  style: TextStyle(
                    color: AppColors.dashColorBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  AppBar appBar(Size size) {
    return AppBar(
        backgroundColor: AppColors.dashColorBlack,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: size.width * 0.52,
                    height: size.height * 0.07,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.dashColorBlackSecond,
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'assets/icons/arrows_left.svg',
                          height: 15,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 1,
                          height: size.height,
                          color: AppColors.dashColorGreySecond,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(
                          'assets/icons/search.svg',
                          height: 18,
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
                  Container(
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
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ));
  }
}
