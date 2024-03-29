
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/common/utils/app_bar.dart';
import 'package:myapp/common/utils/constrants.dart';
import 'package:myapp/common/utils/image_res.dart';
import 'package:myapp/common/widgets/image_widgets.dart';

import '../application/widgets/home_widget.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: "Profile",
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              // Avatar
              const CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/024/983/914/original/simple-user-default-icon-free-png.png'),
              ),
              SizedBox(height: 30),

              // Box thông tin
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    children: [
                      // Tên
                      Text(
                        'Username:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      UserName(),
                      SizedBox(height: 20),
                      Text(
                        'Type: STUDENT',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Email:',
                        style: TextStyle(
                          fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      // Email
                      Text(
                        'email@domain.com',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),

                      // Số điện thoại
                      Text(
                        'SĐT: '
                        '0812633203',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Nút đăng xuất
              ElevatedButton(
                onPressed: () {
                  // Xử lý đăng xuất và chuyển hướng trở lại trang đăng nhập
                  Navigator.of(context).pushNamedAndRemoveUntil('/sign_in', (route) => false);
                },
                child: Text('Đăng xuất'),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
