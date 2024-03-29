import 'package:flutter/material.dart';

import '../../common/utils/image_res.dart';
import 'PageBanner.dart';



class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _MessagePageState();
}

class _MessagePageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: PageBanner(title: 'Chat', image: ImageRes.videoDetail,),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              height: 50,
              child: TextField(
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(right: 12),
                  hintText: 'Search Chat',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Color(0xFFF5F5F5),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.only(bottom: 12),
              margin: EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFF5F5F5), width: 2))),
              child: Row(
                children: [
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: NetworkImage('https://static.vecteezy.com/system/resources/previews/024/983/914/original/simple-user-default-icon-free-png.png'),
                            fit: BoxFit.cover,
                          ))),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Duc Tran',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '10:30 AM',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Text(
                            'It’s a beautiful place',
                            style: TextStyle(fontSize: 13),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 12),
              margin: EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFF5F5F5), width: 2))),
              child: Row(
                children: [
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: NetworkImage('https://genk.mediacdn.vn/k:thumb_w/640/2016/1-1453290624280/khoa-hoc-chung-minh-spiderman-khong-bao-gio-co-thuc.jpg'),
                            fit: BoxFit.cover,
                          ))),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tuan Tran',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '9:25 AM',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Text(
                            'See you tomorrow',
                            style: TextStyle(fontSize: 13),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 12),
              margin: EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFF5F5F5), width: 2))),
              child: Row(
                children: [
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: NetworkImage('https://nld.mediacdn.vn/291774122806476800/2021/11/7/hoa-hau-tieu-vy-21-16362488390641936908568.jpg'),
                            fit: BoxFit.cover,
                          ))),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Ha Thu',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '7:30 AM',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Text(
                            'We can start at 8am',
                            style: TextStyle(fontSize: 13),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}