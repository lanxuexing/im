import 'package:flutter/material.dart';
import 'package:im/home/constants.dart' show AppColors;

// 微信页面数据模型
class WechatModal {
  final String avatar; // 头像
  final String title; // 标题
  final int titleColor; // 标题的颜色
  final String msg; // 最近一条消息
  final String date; // 最近消息时间
  final bool isDisable; // 是否屏蔽消息
  final int unreadMsgCount; // 未读消息数
  final bool isDisplayDot; // 是否展示消息小红点

  WechatModal({
    @required this.avatar,
    @required this.title,
    @required this.date,
    this.msg,
    this.unreadMsgCount: 0,
    this.isDisable: false,
    this.isDisplayDot: false,
    this.titleColor: AppColors.WechatTitleColor,
  })  : assert(avatar != null), // 静态类型检查
        assert(title != null),
        assert(date != null);
}

// 微信页面Mock数据集合
class WechatMockData {
  static final List<WechatModal> wechatMockData = [
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/men/53.jpg',
      title: 'Maurice Sutton',
      msg: '设军最议写军加处片标写任，料工按效总型共图活，院物个M边吼呜劳卧杏。',
      date: '22:39',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/women/76.jpg',
      title: 'Jerry',
      msg: '导斗六号保越以治体设，级少观影候却种机复，石格孟码需变P医。',
      date: '21:10',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/women/17.jpg',
      title: 'Dangdang',
      msg: '布育量人小越心受毛，小起具但特音么心交，但XL呜会段员。',
      date: '02:30',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/women/55.jpg',
      title: 'Teddy',
      msg: '头下始号分外将内最，下素委劳一业属，容问该查地就都。',
      date: '21:34',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/women/11.jpg',
      title: 'Steave',
      msg: '省半别圆统色为条正，所次话果现究自，民气Q美力点专。',
      date: '13:03',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/women/65.jpg',
      title: 'Vivian',
      msg: '性整阶处段受，府老积百求，铁3吼见。',
      date: '14:07',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/women/50.jpg',
      title: 'Mary',
      msg: ' 叫命量长程家须史，即角立品并清，越叫求头F志。',
      date: '18:48',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/women/91.jpg',
      title: 'David',
      msg: '心得改管派采果实处你克，物受级便该约住走南准边，内名W压位连该系孟。',
      date: '17:26',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/women/60.jpg',
      title: 'Bob',
      msg: '子名然中很车位们加，厂把小别全农称消出，听肃直盛般教整。',
      date: '16:16',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/men/60.jpg',
      title: 'Jeff Green',
      msg: '维南动价识来便，或系设山革中制，院T划那每。',
      date: '09:17',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/men/45.jpg',
      title: 'Adam',
      msg: '证新积属原极务支，色者且生王即叫，统政需本观我，I质需旷积针。',
      date: '10:24',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/men/7.jpg',
      title: 'Michel',
      msg: ' 总酸技度土起般次，回华量断系所，建相孤体林抄。',
      date: '10:29',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/men/35.jpg',
      title: 'Green',
      msg: '解见引带至置方为流今离立，实每个便身众织响低，维声铁肃装S计确束有。',
      date: '11:31',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/men/64.jpg',
      title: 'Jack Ma',
      msg: '战低教志程参米，运什石长么清，段N居秀解。',
      date: '12:53',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/men/86.jpg',
      title: 'Tom',
      msg: '究新物列细内更写明养表，连出表业龙J盛查土。 样色开与矿联压，该正造色时例难每，她X皂隶镰上。',
      date: '07:08',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/women/21.jpg',
      title: 'Jenson',
      msg: '战低教志程参米，运什石长么清，段N居秀解。',
      date: '12:53',
    ),
    WechatModal(
      avatar: 'https://randomuser.me/api/portraits/women/60.jpg',
      title: 'Timi',
      msg: '究新物列细内更写明养表，连出表业龙J盛查土。 样色开与矿联压，该正造色时例难每，她X皂隶镰上。',
      date: '07:08',
    ),
  ];
}
