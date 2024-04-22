import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:master_bagasi/presentation/models/goods_model.dart';
import 'package:master_bagasi/presentation/widgets/appbar_widget.dart';
import 'package:master_bagasi/presentation/widgets/button_cart_widget.dart';
import 'package:master_bagasi/presentation/widgets/header_widget.dart';
import 'package:master_bagasi/util/assets.dart';
import 'package:master_bagasi/util/color.dart';

import '../widgets/bottom_navigationbar_widget.dart';
import 'discussion_product.dart';

class DetailPage extends StatefulWidget {
  DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int? index;
  List<String> listVariant = [
    'Bundling Paru Pedas & Ikan Kayu Aceh',
    'Bundling Paru Pedas',
    'Ikan Kayu Aceh',
  ];

  Widget variant(String value, int thisindex) {
    return GestureDetector(
        onTap: () {
          setState(() {
            index = thisindex;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          // margin: EdgeInsets.all(12),
          // width: ,
          decoration: BoxDecoration(
              border: Border.all(color: ColorApp.black),
              color: thisindex == index ? ColorApp.black : ColorApp.white,
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            listVariant[thisindex],
            style: TextStyle(
                color: thisindex == index ? ColorApp.white : ColorApp.black,
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: ColorApp.black,
          title: Container(
            decoration: BoxDecoration(
              color: ColorApp.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: ColorApp.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: ColorApp.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: ColorApp.white),
                      ),
                    ),
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        prefixIcon: Transform.scale(
                            scale: 0.5,
                            child: Image.asset(
                              AssetsConstant.search,
                              height: 1.8,
                            )),
                        hintText: 'Cari di Master Bagasi',
                        hintStyle: const TextStyle(color: ColorApp.white),
                        filled: true,
                        fillColor: ColorApp.grey,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        focusColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: ColorApp.grey)),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorApp.black,
                  ),
                  child: Row(
                    children: [
                      AppBarWidget(
                        icon: AssetsConstant.list,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: AppBarWidget(
                          icon: AssetsConstant.cart,
                        ),
                      ),
                      AppBarWidget(
                        icon: AssetsConstant.chat,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Image.asset(AssetsConstant.banner_one),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 60,
                  decoration: BoxDecoration(
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'RP.178.200',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 1,
                            color: ColorApp.grey.shade300,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              '0.35 Kg',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 1,
                            color: ColorApp.grey.shade300,
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset(AssetsConstant.favorite,
                                  height: 36)),
                          Container(
                            height: 60,
                            width: 1,
                            color: ColorApp.grey.shade300,
                          ),
                          Image.asset(
                            AssetsConstant.share,
                            height: 36,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          'Dapur Mami Kikas - Paru Pedas Aceh dan Ikan Kayu Aceh'),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Selext Variant',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Wrap(
                        spacing: 20,
                        runSpacing: 10,
                        direction: Axis.horizontal,
                        children: listVariant
                            .asMap()
                            .entries
                            .map(
                              (MapEntry map) =>
                                  variant(map.value, map.key),
                            )
                            .toList(),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Product Detail',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sertifikasi',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Divider(),
                              Text(
                                'Kategori',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Divider(),
                              Text(
                                'Provinsi',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Divider(),
                              Text(
                                'Brand',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Divider(),
                              Text(
                                'SKU',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Divider(),
                              Text(
                                'Sustensi',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sertifikasi',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Divider(
                                    color: ColorApp.grey.shade300,
                                    thickness: 1,
                                  ),
                                ),
                                Text(
                                  'Kategori',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Divider(
                                    color: ColorApp.grey.shade300,
                                    thickness: 1,
                                  ),
                                ),
                                Text(
                                  'Provinsi',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Divider(
                                    color: ColorApp.grey.shade300,
                                    thickness: 1,
                                  ),
                                ),
                                Text(
                                  'Brand',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Divider(
                                    color: ColorApp.grey.shade300,
                                    thickness: 1,
                                  ),
                                ),
                                Text(
                                  'SKU',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Divider(
                                    color: ColorApp.grey.shade300,
                                    thickness: 1,
                                  ),
                                ),
                                Text(
                                  'Sustensi',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Deksripsi Produk',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Olahan Paru khas Aceh yang pedas membuat selera makan meningkat, bisa mengobati rasa kangen akan masakan Nusantara.\n\nOlahan Ikan Kayu khas Aceh yang pedas membuat selera makan meningkat, bisa mengobati rasa kangen akan masakan Nusantara.\n\nterdiri dari 1 Paru Pedas Aceh Spicy 250 gram 1 Ikan Kayu Aceh Spicy 250 gram',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  decoration: BoxDecoration(
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lainnya di Kategori ini',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: ColorApp.orange),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 340,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: listGoods.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: ColorApp.white,
                            borderRadius: BorderRadius.circular(8)),
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(listGoods[index].image),
                            Divider(
                              height: 1,
                              color: ColorApp.black,
                              thickness: 1,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 0, 5),
                                    child: Text(
                                      listGoods[index].title,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        listGoods[index].price,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 22.41,
                                            width: 2,
                                            color: ColorApp.grey.shade400,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            listGoods[index].weight,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Text(
                                    listGoods[index].totalSoldOut,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: ColorApp.grey.shade700),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(AssetsConstant.favorite,
                                          height: 36),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child:  ButtonCartWidget(
                                          textColor: ColorApp.orange,
                                          borderColor: ColorApp.orange,
                                          backgroundColor: ColorApp.white,
                                          fontSizes: 12,
                                          heightButton: 30,
                                          sizeIcon: 18.2,
                                        )
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(AssetsConstant.banner_two)),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Tentang Brand',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(AssetsConstant.profile_image),
                                  radius: 40,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('DAPUR MAMI KIKAS',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600)),
                                      Text('Siap Saji Ala Kaki Lima',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                            AssetsConstant.follow,
                            height: 44,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Dapur Mami Kikas adalah dapur miliknya mamki Kikas, Masa engga tau? dia punya olahan aneka lauk siap saji yang almost terbuat dari daging, langsung sikat aja brayyy',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Text(
                        'Selengkapnya...',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: ColorApp.orange),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lainnya di Kategori ini',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: ColorApp.orange),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 340,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: listGoods.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: ColorApp.white,
                            borderRadius: BorderRadius.circular(8)),
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(listGoods[index].image),
                            Divider(
                              height: 1,
                              color: ColorApp.black,
                              thickness: 1,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 0, 5),
                                    child: Text(
                                      listGoods[index].title,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        listGoods[index].price,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 22.41,
                                            width: 2,
                                            color: ColorApp.grey.shade400,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            listGoods[index].weight,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Text(
                                    listGoods[index].totalSoldOut,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: ColorApp.grey.shade700),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(AssetsConstant.favorite,
                                          height: 36),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child:  ButtonCartWidget(
                                          textColor: ColorApp.orange,
                                          borderColor: ColorApp.orange,
                                          backgroundColor: ColorApp.white,
                                          fontSizes: 12,
                                          heightButton: 30,
                                          sizeIcon: 18.2,
                                        )
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: ColorApp.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Diskusi Produk',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Ingin bertanya mengenai produk ini dalam forum diskusi?',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.infinity, 44),
                                foregroundColor: ColorApp.black,
                                backgroundColor: ColorApp.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (c){
                                return DiscussionProduct();
                              }));
                            },
                            child: Text(
                              'Tulis Pertanyaan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorApp.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    )),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: ColorApp.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pilihan Lainnya Untukmu',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: ColorApp.orange),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    height: 340,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: listGoods.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              color: ColorApp.white,
                              borderRadius: BorderRadius.circular(8)),
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(listGoods[index].image),
                              Divider(
                                height: 1,
                                color: ColorApp.black,
                                thickness: 1,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 10, 0, 5),
                                      child: Text(
                                        listGoods[index].title,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          listGoods[index].price,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 22.41,
                                              width: 2,
                                              color: ColorApp.grey.shade400,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              listGoods[index].weight,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(
                                      listGoods[index].totalSoldOut,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: ColorApp.grey.shade700),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(AssetsConstant.favorite,
                                            height: 36),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                            child: ButtonCartWidget(
                                          textColor: ColorApp.orange,
                                          borderColor: ColorApp.orange,
                                          backgroundColor: ColorApp.white,
                                          fontSizes: 12,
                                          heightButton: 30,
                                          sizeIcon: 18.2,
                                        ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBarWidget());
  }
}
