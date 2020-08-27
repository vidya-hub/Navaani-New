import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:navaninew/configuration.dart';
import 'package:navaninew/constants.dart';
import 'package:navaninew/navigation_bloc.dart';
import 'package:navaninew/widgets/profile_list_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'configuration.dart';

class ProfileScreen extends StatefulWidget with NavigationState {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);

    var profileInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            height: kSpacingUnit.w * 10,
            width: kSpacingUnit.w * 10,
            margin: EdgeInsets.only(top: kSpacingUnit.w * 3),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: kSpacingUnit.w * 8,
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    // color: primaryGreen,
                    height: kSpacingUnit.w * 2.5,
                    width: kSpacingUnit.w * 2.5,
                    decoration: BoxDecoration(
                      color: primaryGreen,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      heightFactor: kSpacingUnit.w * 1.5,
                      widthFactor: kSpacingUnit.w * 1.5,
                      child: Icon(
                        LineAwesomeIcons.pen,
                        color: Colors.white,
                        size: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          Text(
            'Abhi Sondagar',
            style: kTitleTextStyle,
          ),
          SizedBox(height: kSpacingUnit.w * 0.5),
          Text(
            'abhisondagar@gmail.com',
            style: kCaptionTextStyle,
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          Container(
            height: kSpacingUnit.w * 4,
            width: kSpacingUnit.w * 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
              color: primaryGreen,
            ),
            child: Center(
              child: Text(
                'Upgrade to PRO',
                style: kButtonTextStyle,
              ),
            ),
          ),
        ],
      ),
    );

    // var themeSwitcher = ThemeSwitcher(
    //   builder: (context) {
    //     return AnimatedCrossFade(
    //       duration: Duration(milliseconds: 200),
    //       crossFadeState:
    //           ThemeProvider.of(context).brightness == Brightness.dark
    //               ? CrossFadeState.showFirst
    //               : CrossFadeState.showSecond,
    //       firstChild: GestureDetector(
    //         onTap: () =>
    //             ThemeSwitcher.of(context).changeTheme(theme: kLightTheme),
    //         child: Icon(
    //           LineAwesomeIcons.sun,
    //           size: ScreenUtil().setSp(kSpacingUnit.w * 3),
    //         ),
    //       ),
    //       secondChild: GestureDetector(
    //         onTap: () =>
    //             ThemeSwitcher.of(context).changeTheme(theme: kDarkTheme),
    //         child: Icon(
    //           LineAwesomeIcons.moon,
    //           size: ScreenUtil().setSp(kSpacingUnit.w * 3),
    //         ),
    //       ),
    //     );
    //   },
    // );

    var header = Material(
      elevation: 5.0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: kSpacingUnit.w * 3),
              GestureDetector(
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvents.HomePageClickEvent);
                },
                child: Icon(
                  LineAwesomeIcons.arrow_left,
                  size: ScreenUtil().setSp(kSpacingUnit.w * 3),
                ),
              ),
              profileInfo,
              // themeSwitcher,
              Icon(
                LineAwesomeIcons.themeco,
                size: ScreenUtil().setSp(kSpacingUnit.w * 3),
              ),

              SizedBox(width: kSpacingUnit.w * 3),
            ],
          ),
          SizedBox(height: 3.0),
        ],
      ),
    );

    return Builder(
      builder: (context) {
        return Scaffold(
          body: Column(
            children: <Widget>[
              SizedBox(height: kSpacingUnit.w * 5),
              header,
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ProfileListItem(
                      icon: LineAwesomeIcons.user_shield,
                      text: 'Privacy',
                    ),
                    ProfileListItem(
                      icon: LineAwesomeIcons.history,
                      text: 'Purchase History',
                    ),
                    ProfileListItem(
                      icon: LineAwesomeIcons.question_circle,
                      text: 'Help & Support',
                    ),
                    ProfileListItem(
                      icon: LineAwesomeIcons.cog,
                      text: 'Settings',
                    ),
                    ProfileListItem(
                      icon: LineAwesomeIcons.user_plus,
                      text: 'Invite a Friend',
                    ),
                    ProfileListItem(
                      icon: LineAwesomeIcons.alternate_sign_out,
                      text: 'Logout',
                      hasNavigation: false,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
