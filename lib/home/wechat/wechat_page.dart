import 'package:flutter/material.dart';
import 'package:im/home/constants.dart' show AppStyles, AppColors;
import 'package:im/home/wechat/wechat_modal.dart' show WechatMockData, WechatModal;

class WeChat extends StatefulWidget {
  final Widget child;

  WeChat({Key key, this.child}) : super(key: key);

  _WeChatState createState() => _WeChatState();
}

class _WeChatState extends State<WeChat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: WechatMockData.wechatMockData.length,
      itemBuilder: (BuildContext context, int index) {
        return _BuildWechatPage(
          wechatModal: WechatMockData.wechatMockData[index],
        );
      },
    );
  }
}

class _BuildWechatPage extends StatelessWidget {
  final WechatModal wechatModal;

  const _BuildWechatPage({
    Key key,
    this.wechatModal,
  })  : assert(wechatModal != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(AppColors.WechatDivderColor),
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Image.network(
            wechatModal.avatar,
            width: AppStyles.AvatarSize,
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  wechatModal.title,
                  style: AppStyles.TitleStyle,
                ),
                SizedBox(height: 4.0,),
                Text(
                  wechatModal.msg,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis, // 设置文字溢出...表示
                  style: AppStyles.MsgStyle,
                )
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                '17:52',
                style: AppStyles.MsgStyle,
              ),
              SizedBox(height: 20.0,)
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
    );
  }
}
