import 'package:flutter/material.dart';

// 项目常用颜色志
class AppColors {
  static const APPBarColor = 0xFF303030;
  static const TabIconColor = 0xFF999999;
  static const TabActiveIconColor = 0xFF46C11B;
  static const AppBarPopupMenuTextColorColor = 0xFFFFFFFF;
  static const WechatTitleColor = 0xFF000000;
  static const WechatMsgColor = 0xFF4A4A4A;
  static const WechatDivderColor = 0xFFCCCCCC;
}

// 常用字体
class AppIconFonts {
  static const IconFontsFamily = 'IMFonts';
}

// 常用样式
class AppStyles {
  // 微信--title
  static const TitleStyle = TextStyle(
    fontSize: 18.0,
    color: Color(AppColors.WechatTitleColor),
  );
  // 微信 -- msg
  static const MsgStyle = TextStyle(
    fontSize: 14.0,
    color: Color(AppColors.WechatMsgColor),
  );
  // 微信 -- avatar
  static const AvatarSize = 64.0;
}