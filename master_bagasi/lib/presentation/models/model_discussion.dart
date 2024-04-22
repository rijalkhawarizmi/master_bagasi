// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../util/assets.dart';

class DiscussionModel {
  String discussionID;
  String profileImage;
  String name;
  String flag;
  String country;
  String discussion;
  String date;
  List<ReplyDiscussion> replyDiscussion;

  DiscussionModel({
    required this.discussionID,
    required this.profileImage,
    required this.name,
    required this.flag,
    required this.country,
    required this.discussion,
    required this.date,
    required this.replyDiscussion,
  });
}

class ReplyDiscussion {
  String profileImage;
  String name;
  String flag;
  String country;
  String discussion;
  String date;
  ReplyDiscussion({
    required this.profileImage,
    required this.name,
    required this.flag,
    required this.country,
    required this.discussion,
    required this.date,
  });
}

List<DiscussionModel> discussionModel = [
  DiscussionModel(
      discussionID: 'D1',
      profileImage: AssetsConstant.profileCommentOne,
      name: 'Junaedi',
      flag: AssetsConstant.gbr,
      country: 'GBR',
      discussion: 'Kirim Paru ke UK aman kak?',
      date: 'Jun 2024',
      replyDiscussion: replyDiscussion),
       DiscussionModel(
      discussionID: 'D2',
      profileImage: AssetsConstant.profileCommentTwo,
      name: 'Ratna Narizwari',
      flag: AssetsConstant.jpn,
      country: 'JPN',
      discussion: 'gimana biar dapat diskon kak?',
      date: 'Jun 2024',
      replyDiscussion: replyDiscussion2)
];
List<ReplyDiscussion> replyDiscussion = [
  ReplyDiscussion(
    profileImage: AssetsConstant.profileReplyOne,
    name: 'Markona',
    flag: AssetsConstant.gbr,
    country: 'GBR',
    discussion:
        'waktu itu aku aman kak, karena dari masterbagasinya dikasih packaging ulang kak, semacam bundling gitu kak.',
    date: 'Jun 2024',
  ),
  ReplyDiscussion(
    profileImage: AssetsConstant.profileReplyTwo,
    name: 'Maemunah',
    flag: AssetsConstant.gbr,
    country: 'GBR',
    discussion: 'aman sih, tapi sempet mau kecewa karena kena remote',
    date: 'Jun 2024',
  ),
];

List<ReplyDiscussion> replyDiscussion2 = [
  ReplyDiscussion(
    profileImage: AssetsConstant.profileReplyThree,
    name: 'Alex Noval',
    flag: AssetsConstant.nzl,
    country: 'NZL',
    discussion:
        'upload kartu migran kak',
    date: 'Jun 2024',
  ),
];