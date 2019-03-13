import 'package:flutter/material.dart';
import 'package:im/home/constants.dart' show AppIconFonts;
import 'package:im/home/constants.dart' show AppColors;

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NavigationIconView> _navigationViews;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      NavigationIconView(
        title: '微信',
        icon: const IconData(0xe793, fontFamily: AppIconFonts.IconFontsFamily),
        activeIcon:
            const IconData(0xe797, fontFamily: AppIconFonts.IconFontsFamily),
      ),
      NavigationIconView(
        title: '通讯录',
        icon: const IconData(0xe601, fontFamily: AppIconFonts.IconFontsFamily),
        activeIcon:
            const IconData(0xe600, fontFamily: AppIconFonts.IconFontsFamily),
      ),
      NavigationIconView(
        title: '发现',
        icon: const IconData(0xe786, fontFamily: AppIconFonts.IconFontsFamily),
        activeIcon:
            const IconData(0xe788, fontFamily: AppIconFonts.IconFontsFamily),
      ),
      NavigationIconView(
        title: '我',
        icon: const IconData(0xe7ab, fontFamily: AppIconFonts.IconFontsFamily),
        activeIcon:
            const IconData(0xe6a2, fontFamily: AppIconFonts.IconFontsFamily),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavBar = BottomNavigationBar(
      items: _navigationViews.map((NavigationIconView navigationIconView) {
        return navigationIconView.item;
      }).toList(),
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        print('您点击了第$index个按钮');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        actions: <Widget>[
          IconButton(
            // 搜素
            icon: Icon(Icons.search),
            onPressed: () {
              print('即将进入搜索');
            },
          ),
          IconButton(
            // 添加（综合功能）
            icon: Icon(Icons.add),
            onPressed: () {
              print('即将添加操作');
            },
          )
        ],
      ),
      body: Container(
        color: Colors.lightBlue,
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}

// 底部导航栏封装类
class NavigationIconView {
  final String _title;
  final IconData _icon;
  final IconData _activeIcon;
  final BottomNavigationBarItem item;

  NavigationIconView(
      {Key key, String title, IconData icon, IconData activeIcon})
      : _title = title,
        _icon = icon,
        _activeIcon = activeIcon,
        item = BottomNavigationBarItem(
            icon: Icon(
              icon,
              color: Color(AppColors.TabIconColor),
            ),
            activeIcon: Icon(
              activeIcon,
              color: Color(AppColors.TabActiveIconColor),
            ),
            title: Text(
              title,
              style: TextStyle(
                  fontSize: 14.0, color: Color(AppColors.TabIconColor)),
            ),
            backgroundColor: Colors.white);
}
