import 'package:master_bagasi/util/assets.dart';

class ModelGoods {
  String image;
  String title;
  String price;
  String totalSoldOut;
  String weight;

  ModelGoods(
      {required this.image, required this.title,
      required this.price,
      required this.totalSoldOut,
      required this.weight});
}

List<ModelGoods> listGoods = [
  ModelGoods(
      image: AssetsConstant.goods_one,
      title: 'Sariwangi - Teh Celup Asli',
      price: 'Rp.135.000',
      totalSoldOut: 'Terjual 1260',
      weight: '400g'),
  ModelGoods(
      image: AssetsConstant.goods_two,
      title: 'MR Krispi',
      price: 'Rp.120.000',
      totalSoldOut: 'Terjual 1260',
      weight: '400g'),
  ModelGoods(
      image: AssetsConstant.goods_one,
      title: 'Sariwangi - Teh Celup Asli',
      price: 'Rp.135.000',
      totalSoldOut: 'Terjual 1260',
      weight: '400g'),
];
