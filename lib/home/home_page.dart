import 'package:flutter/material.dart';
import 'package:im/home/constants.dart' show AppIconFonts;
import 'package:im/home/constants.dart' show AppColors;
import 'package:im/home/wechat/wechat_page.dart';

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NavigationIconView> _navigationViews;
  PageController _pageController;
  List<Widget> _pages;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      NavigationIconView(
        title: '微信',
        icon: IconData(0xe793, fontFamily: AppIconFonts.IconFontsFamily),
        activeIcon: IconData(0xe797, fontFamily: AppIconFonts.IconFontsFamily),
      ),
      NavigationIconView(
        title: '通讯录',
        icon: IconData(0xe601, fontFamily: AppIconFonts.IconFontsFamily),
        activeIcon: IconData(0xe600, fontFamily: AppIconFonts.IconFontsFamily),
      ),
      NavigationIconView(
        title: '发现',
        icon: IconData(0xe786, fontFamily: AppIconFonts.IconFontsFamily),
        activeIcon: IconData(0xe788, fontFamily: AppIconFonts.IconFontsFamily),
      ),
      NavigationIconView(
        title: '我',
        icon: IconData(0xe7ab, fontFamily: AppIconFonts.IconFontsFamily),
        activeIcon: IconData(0xe6a2, fontFamily: AppIconFonts.IconFontsFamily),
      ),
    ];
    _pageController = PageController(
      initialPage: _currentIndex,
    );
    _pages = [
      WeChat(),
      Container(color: Colors.green,),
      Container(color: Colors.blue,),
      Container(color: Colors.purple,),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavBar = BottomNavigationBar(
      fixedColor: const Color(AppColors.TabActiveIconColor),
      items: _navigationViews.map((NavigationIconView navigationIconView) {
        return navigationIconView.item;
      }).toList(),
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
          _pageController.animateToPage(
            _currentIndex,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut,
          );
        });
      },
    );

    // 创建悬浮窗体列表项
    _buildPopupMenuItem(int iconName, String title) {
      return Row(
        children: <Widget>[
          Icon(
            IconData(iconName, fontFamily: AppIconFonts.IconFontsFamily),
            color: const Color(AppColors.AppBarPopupMenuTextColorColor),
          ),
          SizedBox(
            width: 16.0,
          ),
          Text(
            title,
            style: TextStyle(
              color: const Color(AppColors.AppBarPopupMenuTextColorColor),
            ),
          )
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '微信',
          style: TextStyle(fontSize: 16.0),
        ),
        actions: <Widget>[
          IconButton(
            // 搜素
            icon: Icon(Icons.search),
            onPressed: () {
              print('即将进入搜索');
            },
          ),
          PopupMenuButton(
            // pop弹出窗体
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupActionItem>>[
                PopupMenuItem(
                  child: _buildPopupMenuItem(0xe61a, '发起群聊'),
                  value: PopupActionItem.GROUP_CHAT,
                ),
                PopupMenuItem(
                  child: _buildPopupMenuItem(0xe617, '添加朋友'),
                  value: PopupActionItem.ADD_FRIEND,
                ),
                PopupMenuItem(
                  child: _buildPopupMenuItem(0xe650, '扫一扫'),
                  value: PopupActionItem.QR_SCAN,
                ),
                PopupMenuItem(
                  child: _buildPopupMenuItem(0xe611, '收付款'),
                  value: PopupActionItem.PAYMENT,
                ),
              ];
            },
            icon: Icon(Icons.add),
            onSelected: (PopupActionItem selected) {
              print('你点击的是$selected');
            },
          ),
        ],
        elevation: 0.0,
      ),
      body: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return _pages[index];
        },
        itemCount: _pages.length,
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}

// 底部导航栏封装类
class NavigationIconView {
  final BottomNavigationBarItem item;

  NavigationIconView(
      {Key key, String title, IconData icon, IconData activeIcon})
      : item = BottomNavigationBarItem(
            icon: Icon(icon),
            activeIcon: Icon(activeIcon),
            title: Text(
              title,
              style: TextStyle(fontSize: 14.0),
            ),
            backgroundColor: Colors.white);
}

// pop弹出窗体枚举类
enum PopupActionItem { GROUP_CHAT, ADD_FRIEND, QR_SCAN, PAYMENT }
