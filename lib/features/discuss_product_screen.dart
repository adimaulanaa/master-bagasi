import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:master_bagasi/features/utils/colors.dart';

class DiscussProductScreen extends StatefulWidget {
  const DiscussProductScreen({super.key});

  @override
  State<DiscussProductScreen> createState() => _DiscussProductScreenState();
}

class _DiscussProductScreenState extends State<DiscussProductScreen> {
  final TextEditingController _formController = TextEditingController();
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
            const SizedBox(height: 10),
            discussMethod(size),
            const SizedBox(height: 10),
            sectionOneMethod(size),
            const SizedBox(height: 20),
            sectionSecondMethod(size),
            const SizedBox(height: 30),
            Container(
              width: size.width,
              height: size.height * 0.08,
              margin: const EdgeInsets.only(left: 5, right: 5),
              padding: const EdgeInsets.only(left: 15, right: 25),
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
            SizedBox(height: size.height * 0.15),
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

  Container sectionSecondMethod(Size size) {
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(left: 5, right: 5),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.dashColorWhite,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/profil-4.png",
                width: size.width * 0.17,
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * 0.7,
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/jpn.png",
                              width: size.width * 0.07,
                              height: 20,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'JPN',
                              style: TextStyle(
                                color: AppColors.dashColorBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const Expanded(child: SizedBox()),
                        const Text(
                          'Mar 2024',
                          style: TextStyle(
                            color: AppColors.dashColorBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Ratna Nariswari',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    'gimana biar dapet diskon kak?',
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
          Container(
            margin: const EdgeInsets.only(left: 25, top: 15),
            padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.dashColorGrey,
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/profil-5.png",
                  width: size.width * 0.17,
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.6,
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/nzl.png",
                                width: size.width * 0.07,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'NZL',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          const Text(
                            'Mar 2024',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Noval Novarty',
                      style: TextStyle(
                        color: AppColors.dashColorBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      child: const Text(
                        'upload kartu migran kak',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, top: 15),
            padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.dashColorGrey,
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/profil-1.png",
                  width: size.width * 0.17,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: size.width * 0.6,
                  height: size.height * 0.05,
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
                        hintText: 'Isi komentar di sini....',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  Container sectionOneMethod(Size size) {
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
          Row(
            children: [
              Image.asset(
                "assets/images/profil-1.png",
                width: size.width * 0.17,
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * 0.7,
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/gbr.png",
                              width: size.width * 0.07,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'GBR',
                              style: TextStyle(
                                color: AppColors.dashColorBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const Expanded(child: SizedBox()),
                        const Text(
                          'Jun 2024',
                          style: TextStyle(
                            color: AppColors.dashColorBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Dandi Rizaldi',
                    style: TextStyle(
                      color: AppColors.dashColorBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    'Kirim Paru ke UK aman kak?',
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
          Container(
            margin: const EdgeInsets.only(left: 25, top: 15),
            padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.dashColorGrey,
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/profil-2.png",
                  width: size.width * 0.17,
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.6,
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/gbr.png",
                                width: size.width * 0.07,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'GBR',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          const Text(
                            'Jun 2024',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Yolla Viana',
                      style: TextStyle(
                        color: AppColors.dashColorBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      child: const Text(
                        'waktu itu aku aman kak, karena dari masterbagasinya dikasih packaging ulang kak, semacam bundling gitu kak.',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, top: 15),
            padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.dashColorGrey,
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/profil-3.png",
                  width: size.width * 0.17,
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.6,
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/gbr.png",
                                width: size.width * 0.07,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'GBR',
                                style: TextStyle(
                                  color: AppColors.dashColorBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          const Text(
                            'Jun 2024',
                            style: TextStyle(
                              color: AppColors.dashColorBlack,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Echa Fadhillah',
                      style: TextStyle(
                        color: AppColors.dashColorBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      child: const Text(
                        'aman sih, tapi sempet mau kecewa karena kena remote',
                        style: TextStyle(
                          color: AppColors.dashColorBlack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, top: 15),
            padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.dashColorGrey,
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/profil-1.png",
                  width: size.width * 0.17,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: size.width * 0.6,
                  height: size.height * 0.05,
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
                        hintText: 'Isi komentar di sini....',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
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
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: SvgPicture.asset(
                            'assets/icons/arrows_left.svg',
                            height: 15,
                          ),
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
