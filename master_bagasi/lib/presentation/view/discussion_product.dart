import 'package:flutter/material.dart';
import 'package:master_bagasi/presentation/models/model_discussion.dart';
import 'package:master_bagasi/presentation/widgets/bottom_navigationbar_widget.dart';

import '../../util/assets.dart';
import '../../util/color.dart';
import '../widgets/appbar_widget.dart';

class DiscussionProduct extends StatelessWidget {
  const DiscussionProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: ColorApp.white, borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Diskusi Produk',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Ingin bertanya mengenai produk ini dalam forum diskusi?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
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
                      Navigator.push(context, MaterialPageRoute(builder: (c) {
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
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              child: ListView.builder(
                itemCount: discussionModel.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  return (index != discussionModel.length)
                      ? Container(
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: ColorApp.white),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 38,
                                        backgroundImage: AssetImage(
                                            discussionModel[index]
                                                .profileImage),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  discussionModel[index].flag,
                                                  width: 28,
                                                  height: 16,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  discussionModel[index]
                                                      .country,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Text(
                                                discussionModel[index].name,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            Text(
                                              discussionModel[index].discussion,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        discussionModel[index].date,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              for (int i = 0;
                                  i <
                                      discussionModel[index]
                                          .replyDiscussion
                                          .length;
                                  i++)
                                Container(
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.only(
                                      left: 35, top: 10, right: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: ColorApp.grey100),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: 38,
                                            backgroundImage: AssetImage(
                                                discussionModel[index]
                                                    .replyDiscussion[i]
                                                    .profileImage),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      discussionModel[index]
                                                          .replyDiscussion[i]
                                                          .flag,
                                                      width: 28,
                                                      height: 16,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      replyDiscussion[index]
                                                          .country,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 10),
                                                  child: Text(
                                                    discussionModel[index]
                                                        .replyDiscussion[i]
                                                        .name,
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                                Text(
                                                  discussionModel[index]
                                                      .replyDiscussion[i]
                                                      .discussion,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            discussionModel[index]
                                                .replyDiscussion[i]
                                                .date,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(
                                    left: 35, top: 10, right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: ColorApp.grey100),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 38,
                                      backgroundImage: AssetImage(
                                          AssetsConstant.profileCommentOne),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin:
                                            EdgeInsets.fromLTRB(10, 0, 5, 0),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            isDense: true,
                                            fillColor: ColorApp.white,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                    vertical: 8),
                                            hintText:
                                                'Isi komentar di sini....',
                                            hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: ColorApp.black100),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(
                        margin: EdgeInsets.only(top: 10,bottom: 200),
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
                        );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
    
  }
}
