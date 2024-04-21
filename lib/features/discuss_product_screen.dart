import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:product/features/utils/colors.dart';

class DiscussProductScreen extends StatefulWidget {
  const DiscussProductScreen({super.key});

  @override
  State<DiscussProductScreen> createState() => _DiscussProductScreenState();
}

class _DiscussProductScreenState extends State<DiscussProductScreen> {
  TextEditingController _formController = TextEditingController();
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
            Container(
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
            )
          ],
        ),
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
